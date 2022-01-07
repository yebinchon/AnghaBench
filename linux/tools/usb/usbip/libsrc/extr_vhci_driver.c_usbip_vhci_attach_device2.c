
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int buff ;
typedef int attach_attr_path ;
struct TYPE_2__ {int hc_device; } ;


 int SYSFS_PATH_MAX ;
 int dbg (char*,...) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;
 char* udev_device_get_syspath (int ) ;
 TYPE_1__* vhci_driver ;
 int write_sysfs_attribute (char*,char*,int ) ;

int usbip_vhci_attach_device2(uint8_t port, int sockfd, uint32_t devid,
  uint32_t speed) {
 char buff[200];
 char attach_attr_path[SYSFS_PATH_MAX];
 char attr_attach[] = "attach";
 const char *path;
 int ret;

 snprintf(buff, sizeof(buff), "%u %d %u %u",
   port, sockfd, devid, speed);
 dbg("writing: %s", buff);

 path = udev_device_get_syspath(vhci_driver->hc_device);
 snprintf(attach_attr_path, sizeof(attach_attr_path), "%s/%s",
   path, attr_attach);
 dbg("attach attribute path: %s", attach_attr_path);

 ret = write_sysfs_attribute(attach_attr_path, buff, strlen(buff));
 if (ret < 0) {
  dbg("write_sysfs_attribute failed");
  return -1;
 }

 dbg("attached port: %d", port);

 return 0;
}
