
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 struct tm* gmtime (int *) ;

int
GetEpochTime(struct tm *tm)
{
 struct tm *t0;
 time_t epoch = 0;

 t0 = gmtime(&epoch);

 if (t0)
 {
  tm->tm_year = t0->tm_year + 1900;
  tm->tm_mon = t0->tm_mon + 1;
  tm->tm_mday = t0->tm_mday;
  tm->tm_hour = t0->tm_hour;
  tm->tm_min = t0->tm_min;
  tm->tm_sec = t0->tm_sec;

  return 0;
 }

 return -1;
}
