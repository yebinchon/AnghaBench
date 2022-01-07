
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usbip_usb_device {char* path; char* busid; scalar_t__ busnum; scalar_t__ bConfigurationValue; scalar_t__ bNumInterfaces; int speed; } ;
struct usb_device_descriptor {int dummy; } ;
struct udev_device {int dummy; } ;
typedef int descr ;
struct TYPE_3__ {int speed; int name; } ;
typedef int FILE ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int SYSFS_BUS_ID_SIZE ;
 int SYSFS_PATH_MAX ;
 int USB_SPEED_UNKNOWN ;
 char* VUDC_DEVICE_DESCR_FILE ;
 int bDeviceClass ;
 int bDeviceProtocol ;
 int bDeviceSubClass ;
 int bNumConfigurations ;
 int bcdDevice ;
 int copy_descr_attr (struct usbip_usb_device*,struct usb_device_descriptor*,int ) ;
 int copy_descr_attr16 (struct usbip_usb_device*,struct usb_device_descriptor*,int ) ;
 int err (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int idProduct ;
 int idVendor ;
 int snprintf (char*,int,char*,char const*,char*) ;
 TYPE_1__* speed_names ;
 int strcmp (int ,char const*) ;
 int strerror (int ) ;
 int strncpy (char*,char const*,int) ;
 struct udev_device* udev_device_get_parent (struct udev_device*) ;
 char* udev_device_get_sysattr_value (struct udev_device*,char*) ;
 char* udev_device_get_sysname (struct udev_device*) ;
 char* udev_device_get_syspath (struct udev_device*) ;

__attribute__((used)) static
int read_usb_vudc_device(struct udev_device *sdev, struct usbip_usb_device *dev)
{
 const char *path, *name;
 char filepath[SYSFS_PATH_MAX];
 struct usb_device_descriptor descr;
 unsigned int i;
 FILE *fd = ((void*)0);
 struct udev_device *plat;
 const char *speed;
 size_t ret;

 plat = udev_device_get_parent(sdev);
 path = udev_device_get_syspath(plat);
 snprintf(filepath, SYSFS_PATH_MAX, "%s/%s",
   path, VUDC_DEVICE_DESCR_FILE);
 fd = fopen(filepath, "r");
 if (!fd)
  return -1;
 ret = fread((char *) &descr, sizeof(descr), 1, fd);
 if (ret != 1) {
  err("Cannot read vudc device descr file: %s", strerror(errno));
  goto err;
 }
 fclose(fd);

 copy_descr_attr(dev, &descr, bDeviceClass);
 copy_descr_attr(dev, &descr, bDeviceSubClass);
 copy_descr_attr(dev, &descr, bDeviceProtocol);
 copy_descr_attr(dev, &descr, bNumConfigurations);
 copy_descr_attr16(dev, &descr, idVendor);
 copy_descr_attr16(dev, &descr, idProduct);
 copy_descr_attr16(dev, &descr, bcdDevice);

 strncpy(dev->path, path, SYSFS_PATH_MAX - 1);
 dev->path[SYSFS_PATH_MAX - 1] = '\0';

 dev->speed = USB_SPEED_UNKNOWN;
 speed = udev_device_get_sysattr_value(sdev, "current_speed");
 if (speed) {
  for (i = 0; i < ARRAY_SIZE(speed_names); i++) {
   if (!strcmp(speed_names[i].name, speed)) {
    dev->speed = speed_names[i].speed;
    break;
   }
  }
 }


 dev->bNumInterfaces = 0;
 dev->bConfigurationValue = 0;
 dev->busnum = 0;

 name = udev_device_get_sysname(plat);
 strncpy(dev->busid, name, SYSFS_BUS_ID_SIZE - 1);
 dev->busid[SYSFS_BUS_ID_SIZE - 1] = '\0';
 return 0;
err:
 fclose(fd);
 return -1;
}
