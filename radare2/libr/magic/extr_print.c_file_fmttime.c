
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
typedef scalar_t__ time_t ;
struct tm {int tm_isdst; } ;


 char* asctime (struct tm*) ;
 char* ctime (scalar_t__*) ;
 struct tm* gmtime_r (scalar_t__*,struct tm*) ;
 struct tm* localtime (scalar_t__*) ;
 size_t strcspn (char*,char*) ;
 int time (scalar_t__*) ;

const char *file_fmttime(ut32 v, int local) {
 char *pp;
 time_t t = (time_t)v;
 struct tm *tm;
 struct tm timestruct;

 if (local) {
  pp = ctime(&t);
 } else {

  static int daylight = 0;
  if (daylight)
   t += 3600;
  tm = gmtime_r(&t, &timestruct);
  if (!tm)
   return "*Invalid time*";
  pp = asctime (tm);
 }

 pp[strcspn (pp, "\n")] = '\0';
 return pp;
}
