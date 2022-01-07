
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* php_gmtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int date_to_ISO8601 (time_t value, char *buf, int length) {
   struct tm *tm, tmbuf;
   tm = php_gmtime_r(&value, &tmbuf);
   if (!tm) {
    return 0;
   }



   return strftime(buf, length, "%Y%m%dT%H:%M:%SZ", tm);

}
