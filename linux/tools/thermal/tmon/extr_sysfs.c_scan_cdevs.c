
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int **** dirent ;
typedef int cdev_name ;
struct TYPE_4__ {int max_cdev_instance; TYPE_1__* cdi; int nr_cooling_dev; } ;
struct TYPE_3__ {int instance; int flag; int type; } ;
typedef int DIR ;


 char* CDEV ;
 int CDEV_FLAG_IN_CONTROL ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 char* THERMAL_SYSFS ;
 int alphasort ;
 int closedir (int *) ;
 int ctrl_cdev ;
 int fprintf (int ,char*) ;
 int free (int ******) ;
 int memset (char*,int ,int) ;
 int * opendir (char*) ;
 TYPE_2__ ptdata ;
 int scandir (char*,int *******,int ,int ) ;
 int snprintf (char*,int,char*,char*,char*,int) ;
 int stderr ;
 scalar_t__ strstr (int ,int ) ;
 int sysfs_get_string (char*,char*,int ) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int scan_cdevs(void)
{
 DIR *dir;
 struct dirent **namelist;
 char cdev_name[256];
 int i, n, k = 0;

 if (!ptdata.nr_cooling_dev) {
  fprintf(stderr, "No cooling devices found\n");
  return 0;
 }
 for (i = 0; i <= ptdata.max_cdev_instance; i++) {
  memset(cdev_name, 0, sizeof(cdev_name));
  snprintf(cdev_name, 256, "%s/%s%d", THERMAL_SYSFS, CDEV, i);

  dir = opendir(cdev_name);
  if (!dir) {
   syslog(LOG_INFO, "Cooling dev %s skipped\n", cdev_name);



   continue;
  }

  n = scandir(cdev_name, &namelist, 0, alphasort);
  if (n < 0)
   syslog(LOG_ERR, "scandir failed in %s", cdev_name);
  else {
   sysfs_get_string(cdev_name, "type", ptdata.cdi[k].type);
   ptdata.cdi[k].instance = i;
   if (strstr(ptdata.cdi[k].type, ctrl_cdev)) {
    ptdata.cdi[k].flag |= CDEV_FLAG_IN_CONTROL;
    syslog(LOG_DEBUG, "control cdev id %d\n", i);
   }
   while (n--)
    free(namelist[n]);
   free(namelist);
  }
  closedir(dir);
  k++;
 }
 return 0;
}
