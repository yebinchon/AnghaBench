
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;

__attribute__((used)) static const char *usb_dir_find(void)
{
 static char udev_usb_path[] = "/dev/bus/usb";

 if (access(udev_usb_path, F_OK) == 0)
  return udev_usb_path;

 return ((void*)0);
}
