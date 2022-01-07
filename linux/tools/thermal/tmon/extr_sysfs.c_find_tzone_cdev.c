
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tz_info {int cdev_binding; int* trip_binding; int nr_cdev; } ;
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int cdev_name_linked ;
struct TYPE_2__ {int nr_cooling_dev; } ;


 scalar_t__ DT_LNK ;
 int EINVAL ;
 int ENODEV ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 unsigned long MAX_NR_TRIP ;
 int get_instance_id (char*,int,int) ;
 int memset (char*,int ,int) ;
 TYPE_1__ ptdata ;
 int readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sysfs_get_ulong (char*,char*,unsigned long*) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int find_tzone_cdev(struct dirent *nl, char *tz_name,
   struct tz_info *tzi, int tz_id, int cid)
{
 unsigned long trip_instance = 0;
 char cdev_name_linked[256];
 char cdev_name[256];
 char cdev_trip_name[256];
 int cdev_id;

 if (nl->d_type == DT_LNK) {
  syslog(LOG_DEBUG, "TZ%d: cdev: %s cid %d\n", tz_id, nl->d_name,
   cid);
  tzi->nr_cdev++;
  if (tzi->nr_cdev > ptdata.nr_cooling_dev) {
   syslog(LOG_ERR, "Err: Too many cdev? %d\n",
    tzi->nr_cdev);
   return -EINVAL;
  }

  snprintf(cdev_name, 256, "%s/%s", tz_name, nl->d_name);
  memset(cdev_name_linked, 0, sizeof(cdev_name_linked));
  if (readlink(cdev_name, cdev_name_linked,
    sizeof(cdev_name_linked) - 1) != -1) {
   cdev_id = get_instance_id(cdev_name_linked, 1,
      sizeof("device") - 1);
   syslog(LOG_DEBUG, "cdev %s linked to %s : %d\n",
    cdev_name, cdev_name_linked, cdev_id);
   tzi->cdev_binding |= (1 << cdev_id);




   snprintf(cdev_trip_name, 256, "%s%s", nl->d_name,
    "_trip_point");
   sysfs_get_ulong(tz_name, cdev_trip_name,
     &trip_instance);



   if (trip_instance > MAX_NR_TRIP)
    trip_instance = 0;
   tzi->trip_binding[cdev_id] |= 1 << trip_instance;
   syslog(LOG_DEBUG, "cdev %s -> trip:%lu: 0x%lx %d\n",
    cdev_name, trip_instance,
    tzi->trip_binding[cdev_id],
    cdev_id);


  }
  return 0;
 }

 return -ENODEV;
}
