
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {size_t tm_wday; size_t tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;
typedef int buf ;


 int MAX_STR ;
 int memcpy (char*,char*,int) ;
 int * month_names ;
 struct tm* php_gmtime_r (int *,struct tm*) ;
 int slprintf (char*,int,char*,int ,int ,int ,scalar_t__,int ,int ,int ) ;
 int * week_days ;

__attribute__((used)) static inline void strcpy_gmt(char *ubuf, time_t *when)
{
 char buf[MAX_STR];
 struct tm tm, *res;
 int n;

 res = php_gmtime_r(when, &tm);

 if (!res) {
  ubuf[0] = '\0';
  return;
 }

 n = slprintf(buf, sizeof(buf), "%s, %02d %s %d %02d:%02d:%02d GMT",
    week_days[tm.tm_wday], tm.tm_mday,
    month_names[tm.tm_mon], tm.tm_year + 1900,
    tm.tm_hour, tm.tm_min,
    tm.tm_sec);
 memcpy(ubuf, buf, n);
 ubuf[n] = '\0';
}
