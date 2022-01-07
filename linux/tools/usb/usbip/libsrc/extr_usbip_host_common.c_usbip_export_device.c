
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int busid; char* path; } ;
struct usbip_exported_device {int status; TYPE_1__ udev; } ;
typedef int sockfd_buff ;
typedef int sockfd_attr_path ;


 int SDEV_ST_AVAILABLE ;


 int ST_DEV_BUSY ;
 int ST_DEV_ERR ;
 int SYSFS_PATH_MAX ;
 int dbg (char*,...) ;
 int err (char*,...) ;
 int info (char*,int) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;
 int write_sysfs_attribute (char*,char*,int ) ;

int usbip_export_device(struct usbip_exported_device *edev, int sockfd)
{
 char attr_name[] = "usbip_sockfd";
 char sockfd_attr_path[SYSFS_PATH_MAX];
 int size;
 char sockfd_buff[30];
 int ret;

 if (edev->status != SDEV_ST_AVAILABLE) {
  dbg("device not available: %s", edev->udev.busid);
  switch (edev->status) {
  case 129:
   dbg("status SDEV_ST_ERROR");
   ret = ST_DEV_ERR;
   break;
  case 128:
   dbg("status SDEV_ST_USED");
   ret = ST_DEV_BUSY;
   break;
  default:
   dbg("status unknown: 0x%x", edev->status);
   ret = -1;
  }
  return ret;
 }


 size = snprintf(sockfd_attr_path, sizeof(sockfd_attr_path), "%s/%s",
   edev->udev.path, attr_name);
 if (size < 0 || (unsigned int)size >= sizeof(sockfd_attr_path)) {
  err("exported device path length %i >= %lu or < 0", size,
      (long unsigned)sizeof(sockfd_attr_path));
  return -1;
 }

 size = snprintf(sockfd_buff, sizeof(sockfd_buff), "%d\n", sockfd);
 if (size < 0 || (unsigned int)size >= sizeof(sockfd_buff)) {
  err("socket length %i >= %lu or < 0", size,
      (long unsigned)sizeof(sockfd_buff));
  return -1;
 }

 ret = write_sysfs_attribute(sockfd_attr_path, sockfd_buff,
        strlen(sockfd_buff));
 if (ret < 0) {
  err("write_sysfs_attribute failed: sockfd %s to %s",
      sockfd_buff, sockfd_attr_path);
  return ret;
 }

 info("connect: %s", edev->udev.busid);

 return ret;
}
