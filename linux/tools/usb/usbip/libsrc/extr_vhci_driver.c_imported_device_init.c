
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_imported_device {int udev; } ;
struct udev_device {int dummy; } ;


 int dbg (char*,char*) ;
 int read_usb_device (struct udev_device*,int *) ;
 int udev_context ;
 struct udev_device* udev_device_new_from_subsystem_sysname (int ,char*,char*) ;
 int udev_device_unref (struct udev_device*) ;

__attribute__((used)) static struct usbip_imported_device *
imported_device_init(struct usbip_imported_device *idev, char *busid)
{
 struct udev_device *sudev;

 sudev = udev_device_new_from_subsystem_sysname(udev_context,
             "usb", busid);
 if (!sudev) {
  dbg("udev_device_new_from_subsystem_sysname failed: %s", busid);
  goto err;
 }
 read_usb_device(sudev, &idev->udev);
 udev_device_unref(sudev);

 return idev;

err:
 return ((void*)0);
}
