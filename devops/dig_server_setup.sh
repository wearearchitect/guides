# get apache the fuck off this system
echo "Remove Apache et al from the system"
sudo yum erase httpd httpd-tools apr apr-util

echo "Create user"
if id -u "deploy" >/dev/null 2>&1; then
  echo "User exists"
else
  sudo useradd -d /home/deploy -m deploy
  sudo mkdir /home/deploy/.ssh
  sudo touch /home/deploy/.ssh/authorized_keys
  sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQRmA5HU+HK0z63GAYHeJTWrFAvMeQRaJUS5kIrR+xzJfyz96zOTBEHRO0zH6OhYHTzQTdWapAdiYA4Ehf7lIXxRPvmNS2aYsRArjFa9Ct2TzeXxWZDlTgXuxS73Uj4aiiVRJCR0isB0PJcQbpUUbbcSHKeDJsL+qvZKrC+2CLHJ/5NLwvQ0ahYMkM5QY5mGrdEQWCGTd9aLoiCew9nftUDJcJsIOwCm5RY9Z+h2eA17tpuUtDYXmM6yiwnl6aSbGIKSqcMNWqLXWK6RThwBh+mnrL7Up9GIsOiocY8e3AGBuY4eRvCRrbGYchKdQx5rYF232z5zcivEdj+/DGkcrb gareth.bishop@LDNARC-NMX52VZ" >> touch /home/deploy/.ssh/authorized_keys
  sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsbGLLUaiMw2JM9f9Ox7vT73kKakpcAwbyoDrb3nb2/Jofna46wvfHWPROelCAS+USZkCRx26Jj9FTxAMHxB77sEh6jwxYUw0lFNdRI0uTrsigqODpnOMNZiW2okFA6WX6jfNqqpjJiL1Ew+DQk/qCsqb85IFPkn+LqWvkw2bzba1rEaKXumJNg+w63LaCX9CzgSCQR/eNrhp7gACxQNRfw68imVS3liiROC3QEv6CeRMFq07QGs39jBBUuXC44deFxo1Xi3UT0MjS6KfoIKxUd4scPoYPif3nsG4uBXalBAoBXJKVJffKF/SHnUoiZ7nwlBZXH4PaxXkxcmmaBfVZ edward.dakin@LDNARC-DMXP00B" >> touch /home/deploy/.ssh/authorized_keys
  sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/mdt1plQl6T41jVv8L/PL7ymEK3j5yLVVgQ76Lf6AV2DE1jsvD3fsNJ6dra7vGzxEd4ah3eNNm6x6YIDexPwkvOYTkkRevBAOWKWq3kVKpLCSS+zUceUv4xUl94nJAU+zhGV2PSPlyZO2SpcyntKIMLAoXxPwTZbvpq0sFEMD/dZZLkFKcWZI4mqe/jpDYL7ig3S8k3HVpbuMctBdTIHSDw1VJh5qTVheg6O7ODKnQzshPeEDp3NT7ZGubX6zZodsfXAk4uTBdOZJGW9URiJV5PpVFJMmPCf1BhyRx1B5/7DIMiiWq4o7Lx/iby7gL2Vh6Tlv8qoNn1lQ/ZRi299t adam.onishi@LDNARC-NMXN1VB" >> touch /home/deploy/.ssh/authorized_keys
fi