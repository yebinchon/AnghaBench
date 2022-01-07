
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_yday; } ;



time_t __wceex_tm_to_time_t(const struct tm *tmbuff)
{
    time_t timer;


    if (tmbuff->tm_year < 70)
    {
        return (time_t) -1;
    }




    timer = tmbuff->tm_sec
        + tmbuff->tm_min * 60
        + tmbuff->tm_hour * 3600
        + tmbuff->tm_yday * 86400
        + (tmbuff->tm_year - 70) * 31536000
        + ((tmbuff->tm_year - 69) / 4) * 86400
        - ((tmbuff->tm_year - 1) / 100) * 86400
        + ((tmbuff->tm_year + 299) / 400) * 86400;

    return timer;
}
