
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int detach_attr_path ;
typedef int buff ;
struct TYPE_2__ {int hc_device; } ;


 int SYSFS_PATH_MAX ;
 int dbg (char*,...) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;
 char* udev_device_get_syspath (int ) ;
 TYPE_1__* vhci_driver ;
 int write_sysfs_attribute (char*,char*,int ) ;

int usbip_vhci_detach_device(uint8_t port)
{
 char detach_attr_path[SYSFS_PATH_MAX];
 char attr_detach[] = "detach";
 char buff[200];
 const char *path;
 int ret;

 snprintf(buff, sizeof(buff), "%u", port);
 dbg("writing: %s", buff);

 path = udev_device_get_syspath(vhci_driver->hc_device);
 snprintf(detach_attr_path, sizeof(detach_attr_path), "%s/%s",
   path, attr_detach);
 dbg("detach attribute path: %s", detach_attr_path);

 ret = write_sysfs_attribute(detach_attr_path, buff, strlen(buff));
 if (ret < 0) {
  dbg("write_sysfs_attribute failed");
  return -1;
 }

 dbg("detached port: %d", port);

 return 0;
}
