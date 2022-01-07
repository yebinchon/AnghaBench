
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int err (char*,...) ;
 int sscanf (char const*,char const*,int*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* udev_device_get_sysattr_value (struct udev_device*,char const*) ;

int read_attr_value(struct udev_device *dev, const char *name,
      const char *format)
{
 const char *attr;
 int num = 0;
 int ret;

 attr = udev_device_get_sysattr_value(dev, name);
 if (!attr) {
  err("udev_device_get_sysattr_value failed");
  goto err;
 }
 ret = sscanf(attr, format, &num);
 if (ret < 1) {
  if (strcmp(name, "bConfigurationValue") &&
    strcmp(name, "bNumInterfaces")) {
   err("sscanf failed for attribute %s", name);
   goto err;
  }
 }

err:

 return num;
}
