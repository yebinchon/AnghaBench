
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint16_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_mday; } ;


 struct tm* localtime (int *) ;

void
_zip_u2d_time(time_t time, zip_uint16_t *dtime, zip_uint16_t *ddate)
{
    struct tm *tm;

    tm = localtime(&time);
    *ddate = (zip_uint16_t)(((tm->tm_year+1900-1980)<<9) + ((tm->tm_mon+1)<<5) + tm->tm_mday);
    *dtime = (zip_uint16_t)(((tm->tm_hour)<<11) + ((tm->tm_min)<<5) + ((tm->tm_sec)>>1));

    return;
}
