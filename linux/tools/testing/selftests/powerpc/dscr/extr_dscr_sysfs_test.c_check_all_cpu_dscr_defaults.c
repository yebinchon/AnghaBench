
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_type; int d_name; } ;
typedef int DIR ;


 char* CPU_PATH ;
 int DT_DIR ;
 int F_OK ;
 int LEN_MAX ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ check_cpu_dscr_default (char*,unsigned long) ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strcmp (int ,char*) ;
 int strstr (int ,char*) ;

__attribute__((used)) static int check_all_cpu_dscr_defaults(unsigned long val)
{
 DIR *sysfs;
 struct dirent *dp;
 char file[LEN_MAX];

 sysfs = opendir(CPU_PATH);
 if (!sysfs) {
  perror("opendir() failed");
  return 1;
 }

 while ((dp = readdir(sysfs))) {
  int len;

  if (!(dp->d_type & DT_DIR))
   continue;
  if (!strcmp(dp->d_name, "cpuidle"))
   continue;
  if (!strstr(dp->d_name, "cpu"))
   continue;

  len = snprintf(file, LEN_MAX, "%s%s/dscr", CPU_PATH, dp->d_name);
  if (len >= LEN_MAX)
   continue;
  if (access(file, F_OK))
   continue;

  if (check_cpu_dscr_default(file, val))
   return 1;
 }
 closedir(sysfs);
 return 0;
}
