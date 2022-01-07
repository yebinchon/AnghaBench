
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tz_name ;
struct TYPE_10__ {double t_target; } ;
struct TYPE_9__ {unsigned long cur_state; int instance; } ;
struct TYPE_8__ {int nr_tz_sensor; int nr_cooling_dev; TYPE_4__* cdi; TYPE_1__* tzi; } ;
struct TYPE_7__ {int* temp; int tv; } ;
struct TYPE_6__ {int instance; } ;


 char* CDEV ;
 int LOG_ERR ;
 int NR_THERMAL_RECORDS ;
 char* THERMAL_SYSFS ;
 char* TZONE ;
 int cur_thermal_record ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int gettimeofday (int *,int *) ;
 int memset (char*,int ,int) ;
 TYPE_5__ p_param ;
 int probe_cdev (TYPE_4__*,char*) ;
 TYPE_3__ ptdata ;
 int snprintf (char*,int,char*,char*,char*,int ) ;
 int sysfs_get_ulong (char*,char*,int*) ;
 int syslog (int ,char*) ;
 scalar_t__ tmon_log ;
 TYPE_2__* trec ;

int update_thermal_data()
{
 int i;
 int next_thermal_record = cur_thermal_record + 1;
 char tz_name[256];
 static unsigned long samples;

 if (!ptdata.nr_tz_sensor) {
  syslog(LOG_ERR, "No thermal zones found!\n");
  return -1;
 }


 if (next_thermal_record >= NR_THERMAL_RECORDS)
  next_thermal_record = 0;
 gettimeofday(&trec[next_thermal_record].tv, ((void*)0));
 if (tmon_log) {
  fprintf(tmon_log, "%lu ", ++samples);
  fprintf(tmon_log, "%3.1f ", p_param.t_target);
 }
 for (i = 0; i < ptdata.nr_tz_sensor; i++) {
  memset(tz_name, 0, sizeof(tz_name));
  snprintf(tz_name, 256, "%s/%s%d", THERMAL_SYSFS, TZONE,
   ptdata.tzi[i].instance);
  sysfs_get_ulong(tz_name, "temp",
    &trec[next_thermal_record].temp[i]);
  if (tmon_log)
   fprintf(tmon_log, "%lu ",
    trec[next_thermal_record].temp[i] / 1000);
 }
 cur_thermal_record = next_thermal_record;
 for (i = 0; i < ptdata.nr_cooling_dev; i++) {
  char cdev_name[256];
  unsigned long val;

  snprintf(cdev_name, 256, "%s/%s%d", THERMAL_SYSFS, CDEV,
   ptdata.cdi[i].instance);
  probe_cdev(&ptdata.cdi[i], cdev_name);
  val = ptdata.cdi[i].cur_state;
  if (val > 1000000)
   val = 0;
  if (tmon_log)
   fprintf(tmon_log, "%lu ", val);
 }

 if (tmon_log) {
  fprintf(tmon_log, "\n");
  fflush(tmon_log);
 }

 return 0;
}
