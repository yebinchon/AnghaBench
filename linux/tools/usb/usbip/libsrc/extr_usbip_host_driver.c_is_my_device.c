
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int USBIP_HOST_DRV_NAME ;
 int strcmp (char const*,int ) ;
 char* udev_device_get_driver (struct udev_device*) ;

__attribute__((used)) static int is_my_device(struct udev_device *dev)
{
 const char *driver;

 driver = udev_device_get_driver(dev);
 return driver != ((void*)0) && !strcmp(driver, USBIP_HOST_DRV_NAME);
}
