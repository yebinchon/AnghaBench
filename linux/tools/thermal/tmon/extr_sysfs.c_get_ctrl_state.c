
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_3__ {int flag; int instance; } ;


 char* CDEV ;
 int CDEV_FLAG_IN_CONTROL ;
 int LOG_INFO ;
 char* THERMAL_SYSFS ;
 TYPE_2__ ptdata ;
 int snprintf (char*,int,char*,char*,char*,int) ;
 int sysfs_get_ulong (char*,char*,unsigned long*) ;
 int syslog (int ,char*,int) ;

void get_ctrl_state(unsigned long *state)
{
 char ctrl_cdev_path[256];
 int ctrl_cdev_id = -1;
 int i;




 for (i = 0; i < ptdata.nr_cooling_dev; i++) {
  if (ptdata.cdi[i].flag & CDEV_FLAG_IN_CONTROL) {
   ctrl_cdev_id = ptdata.cdi[i].instance;
   syslog(LOG_INFO, "ctrl cdev %d get state\n",
    ptdata.cdi[i].instance);
   break;
  }
 }
 if (ctrl_cdev_id == -1) {
  *state = 0;
  return;
 }
 snprintf(ctrl_cdev_path, 256, "%s/%s%d", THERMAL_SYSFS,
  CDEV, ctrl_cdev_id);
 sysfs_get_ulong(ctrl_cdev_path, "cur_state", state);
}
