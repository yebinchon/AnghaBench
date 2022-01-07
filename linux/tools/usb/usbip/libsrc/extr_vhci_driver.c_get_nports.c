
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;


 int err (char*) ;
 scalar_t__ strtoul (char const*,int *,int) ;
 char* udev_device_get_sysattr_value (struct udev_device*,char*) ;

__attribute__((used)) static int get_nports(struct udev_device *hc_device)
{
 const char *attr_nports;

 attr_nports = udev_device_get_sysattr_value(hc_device, "nports");
 if (!attr_nports) {
  err("udev_device_get_sysattr_value nports failed");
  return -1;
 }

 return (int)strtoul(attr_nports, ((void*)0), 10);
}
