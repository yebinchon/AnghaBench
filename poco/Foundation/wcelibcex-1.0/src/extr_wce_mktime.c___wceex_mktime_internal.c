
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mon; int tm_year; int tm_yday; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int EPOCH_YEAR ;
 scalar_t__ IS_LEAP_YEAR (int) ;
 scalar_t__* MONTHDAYS ;
 int TM_YEAR_BASE ;

__attribute__((used)) static time_t __wceex_mktime_internal(struct tm *tmbuff, time_t _loctime_offset)
{
    time_t tres;
    int doy;
    int i;





    if (tmbuff->tm_mon < 0 || tmbuff->tm_mon > 11 || tmbuff->tm_year < (EPOCH_YEAR - TM_YEAR_BASE))
    {
        return (time_t) -1;
    }


    tres = 0;


    for (i = EPOCH_YEAR; i < tmbuff->tm_year + TM_YEAR_BASE; i++)
    {
        tres += 365 + IS_LEAP_YEAR(i);
    }


    doy = 0;
    for (i = 0; i < tmbuff->tm_mon; i++)
    {
        doy += MONTHDAYS[i];
    }
    tres += doy;


    tmbuff->tm_yday = doy + tmbuff->tm_mday;

    if (tmbuff->tm_mon > 1 && IS_LEAP_YEAR(tmbuff->tm_year + TM_YEAR_BASE))
    {
        tres++;
    }


    tres = 24 * (tres + tmbuff->tm_mday - 1) + tmbuff->tm_hour;


    tres = 60 * tres + tmbuff->tm_min;


    tres = 60 * tres + tmbuff->tm_sec;



    tres += _loctime_offset;

    return tres;
}
