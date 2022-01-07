
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbip_usb_device {char* path; char* busid; int busnum; int speed; } ;
struct udev_device {int dummy; } ;


 int READ_ATTR (struct usbip_usb_device*,int ,struct udev_device*,int ,char*) ;
 int SYSFS_BUS_ID_SIZE ;
 int SYSFS_PATH_MAX ;
 int bConfigurationValue ;
 int bDeviceClass ;
 int bDeviceProtocol ;
 int bDeviceSubClass ;
 int bNumConfigurations ;
 int bNumInterfaces ;
 int bcdDevice ;
 int idProduct ;
 int idVendor ;
 int read_attr_speed (struct udev_device*) ;
 int sscanf (char const*,char*,int *,int *) ;
 int strncpy (char*,char const*,int) ;
 char* udev_device_get_sysname (struct udev_device*) ;
 char* udev_device_get_syspath (struct udev_device*) ;
 int uint16_t ;
 int uint8_t ;

int read_usb_device(struct udev_device *sdev, struct usbip_usb_device *udev)
{
 uint32_t busnum, devnum;
 const char *path, *name;

 READ_ATTR(udev, uint8_t, sdev, bDeviceClass, "%02x\n");
 READ_ATTR(udev, uint8_t, sdev, bDeviceSubClass, "%02x\n");
 READ_ATTR(udev, uint8_t, sdev, bDeviceProtocol, "%02x\n");

 READ_ATTR(udev, uint16_t, sdev, idVendor, "%04x\n");
 READ_ATTR(udev, uint16_t, sdev, idProduct, "%04x\n");
 READ_ATTR(udev, uint16_t, sdev, bcdDevice, "%04x\n");

 READ_ATTR(udev, uint8_t, sdev, bConfigurationValue, "%02x\n");
 READ_ATTR(udev, uint8_t, sdev, bNumConfigurations, "%02x\n");
 READ_ATTR(udev, uint8_t, sdev, bNumInterfaces, "%02x\n");

 READ_ATTR(udev, uint8_t, sdev, devnum, "%d\n");
 udev->speed = read_attr_speed(sdev);

 path = udev_device_get_syspath(sdev);
 name = udev_device_get_sysname(sdev);

 strncpy(udev->path, path, SYSFS_PATH_MAX - 1);
 udev->path[SYSFS_PATH_MAX - 1] = '\0';
 strncpy(udev->busid, name, SYSFS_BUS_ID_SIZE - 1);
 udev->busid[SYSFS_BUS_ID_SIZE - 1] = '\0';

 sscanf(name, "%u-%u", &busnum, &devnum);
 udev->busnum = busnum;

 return 0;
}
