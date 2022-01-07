
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udev_device {int dummy; } ;
struct TYPE_2__ {int num; int * speed; } ;


 int USB_SPEED_UNKNOWN ;
 int err (char*) ;
 TYPE_1__* speed_strings ;
 int strcmp (char const*,int *) ;
 char* udev_device_get_sysattr_value (struct udev_device*,char*) ;

int read_attr_speed(struct udev_device *dev)
{
 const char *speed;

 speed = udev_device_get_sysattr_value(dev, "speed");
 if (!speed) {
  err("udev_device_get_sysattr_value failed");
  goto err;
 }

 for (int i = 0; speed_strings[i].speed != ((void*)0); i++) {
  if (!strcmp(speed, speed_strings[i].speed))
   return speed_strings[i].num;
 }

err:

 return USB_SPEED_UNKNOWN;
}
