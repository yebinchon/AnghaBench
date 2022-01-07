
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; int tm_min; int tm_year; int tm_mon; int tm_mday; scalar_t__ tm_sec; } ;


 long SECS_PER_DAY ;
 long date_to_julian (int,int,int) ;

__attribute__((used)) static int julian_adj(const struct tm *tm, int off_day, long offset_sec,
                      long *pday, int *psec)
{
    int offset_hms, offset_day;
    long time_jd;
    int time_year, time_month, time_day;

    offset_day = offset_sec / SECS_PER_DAY;

    offset_hms = offset_sec - (offset_day * SECS_PER_DAY);
    offset_day += off_day;

    offset_hms += tm->tm_hour * 3600 + tm->tm_min * 60 + tm->tm_sec;

    if (offset_hms >= SECS_PER_DAY) {
        offset_day++;
        offset_hms -= SECS_PER_DAY;
    } else if (offset_hms < 0) {
        offset_day--;
        offset_hms += SECS_PER_DAY;
    }





    time_year = tm->tm_year + 1900;
    time_month = tm->tm_mon + 1;
    time_day = tm->tm_mday;

    time_jd = date_to_julian(time_year, time_month, time_day);


    time_jd += offset_day;

    if (time_jd < 0)
        return 0;

    *pday = time_jd;
    *psec = offset_hms;
    return 1;
}
