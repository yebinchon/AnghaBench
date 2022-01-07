
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_isdst; int member_0; } ;


 int wceex_mktime (struct tm*) ;

time_t wceex_local_to_time_r(int year, int mon, int day, int hour, int min, int sec)
{
    struct tm tmbuff = { 0 };

    tmbuff.tm_year = year;
    tmbuff.tm_mon = mon;
    tmbuff.tm_mday = day;
    tmbuff.tm_hour = hour;
    tmbuff.tm_min = min;
    tmbuff.tm_sec = sec;
    tmbuff.tm_isdst = 0;
    tmbuff.tm_wday = 0;
    tmbuff.tm_yday = 0;


    return wceex_mktime(&tmbuff);
}
