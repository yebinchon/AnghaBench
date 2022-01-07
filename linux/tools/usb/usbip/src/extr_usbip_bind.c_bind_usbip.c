
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bind_attr_path ;


 char* SYSFS_BUS_NAME ;
 char* SYSFS_BUS_TYPE ;
 char* SYSFS_DRIVERS_NAME ;
 char* SYSFS_MNT_PATH ;
 int SYSFS_PATH_MAX ;
 char* USBIP_HOST_DRV_NAME ;
 int err (char*,char*,int ) ;
 int errno ;
 int snprintf (char*,int,char*,char*,char*,char*,char*,char*,char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 int write_sysfs_attribute (char*,char*,int ) ;

__attribute__((used)) static int bind_usbip(char *busid)
{
 char attr_name[] = "bind";
 char bind_attr_path[SYSFS_PATH_MAX];
 int rc = -1;

 snprintf(bind_attr_path, sizeof(bind_attr_path), "%s/%s/%s/%s/%s/%s",
   SYSFS_MNT_PATH, SYSFS_BUS_NAME, SYSFS_BUS_TYPE,
   SYSFS_DRIVERS_NAME, USBIP_HOST_DRV_NAME, attr_name);

 rc = write_sysfs_attribute(bind_attr_path, busid, strlen(busid));
 if (rc < 0) {
  err("error binding device %s to driver: %s", busid,
      strerror(errno));
  return -1;
 }

 return 0;
}
