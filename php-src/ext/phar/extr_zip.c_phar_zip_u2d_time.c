
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int PHAR_SET_16 (char*,int) ;
 struct tm* php_localtime_r (int *,struct tm*) ;

__attribute__((used)) static void phar_zip_u2d_time(time_t time, char *dtime, char *ddate)
{
 uint16_t ctime, cdate;
 struct tm *tm, tmbuf;

 tm = php_localtime_r(&time, &tmbuf);
 if (tm->tm_year >= 1980) {
  cdate = ((tm->tm_year+1900-1980)<<9) + ((tm->tm_mon+1)<<5) + tm->tm_mday;
  ctime = ((tm->tm_hour)<<11) + ((tm->tm_min)<<5) + ((tm->tm_sec)>>1);
 } else {

  cdate = (1<<5) + 1;
  ctime = 0;
 }

 PHAR_SET_16(dtime, ctime);
 PHAR_SET_16(ddate, cdate);
}
