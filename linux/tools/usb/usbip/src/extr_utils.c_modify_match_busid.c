
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int match_busid_attr_path ;


 int SYSFS_BUS_ID_SIZE ;
 char* SYSFS_BUS_NAME ;
 char* SYSFS_BUS_TYPE ;
 char* SYSFS_DRIVERS_NAME ;
 char* SYSFS_MNT_PATH ;
 int SYSFS_PATH_MAX ;
 char* USBIP_HOST_DRV_NAME ;
 int dbg (char*,int ) ;
 int errno ;
 int snprintf (char*,int,char*,char*,...) ;
 int strerror (int ) ;
 int write_sysfs_attribute (char*,char*,int) ;

int modify_match_busid(char *busid, int add)
{
 char attr_name[] = "match_busid";
 char command[SYSFS_BUS_ID_SIZE + 4];
 char match_busid_attr_path[SYSFS_PATH_MAX];
 int rc;
 int cmd_size;

 snprintf(match_busid_attr_path, sizeof(match_busid_attr_path),
   "%s/%s/%s/%s/%s/%s", SYSFS_MNT_PATH, SYSFS_BUS_NAME,
   SYSFS_BUS_TYPE, SYSFS_DRIVERS_NAME, USBIP_HOST_DRV_NAME,
   attr_name);

 if (add)
  cmd_size = snprintf(command, SYSFS_BUS_ID_SIZE + 4, "add %s",
        busid);
 else
  cmd_size = snprintf(command, SYSFS_BUS_ID_SIZE + 4, "del %s",
        busid);

 rc = write_sysfs_attribute(match_busid_attr_path, command,
       cmd_size);
 if (rc < 0) {
  dbg("failed to write match_busid: %s", strerror(errno));
  return -1;
 }

 return 0;
}
