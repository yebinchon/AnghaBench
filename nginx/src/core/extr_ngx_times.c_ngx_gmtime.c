
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef int ngx_uint_t ;
typedef scalar_t__ ngx_tm_year_t ;
typedef scalar_t__ ngx_tm_wday_t ;
struct TYPE_3__ {scalar_t__ ngx_tm_wday; scalar_t__ ngx_tm_year; scalar_t__ ngx_tm_mon; scalar_t__ ngx_tm_mday; scalar_t__ ngx_tm_hour; scalar_t__ ngx_tm_min; scalar_t__ ngx_tm_sec; } ;
typedef TYPE_1__ ngx_tm_t ;
typedef scalar_t__ ngx_tm_sec_t ;
typedef scalar_t__ ngx_tm_mon_t ;
typedef scalar_t__ ngx_tm_min_t ;
typedef scalar_t__ ngx_tm_mday_t ;
typedef scalar_t__ ngx_tm_hour_t ;
typedef int ngx_int_t ;



void
ngx_gmtime(time_t t, ngx_tm_t *tp)
{
    ngx_int_t yday;
    ngx_uint_t sec, min, hour, mday, mon, year, wday, days, leap;



    if (t < 0) {
        t = 0;
    }

    days = t / 86400;
    sec = t % 86400;






    if (days > 2932896) {
        days = 2932896;
        sec = 86399;
    }



    wday = (4 + days) % 7;

    hour = sec / 3600;
    sec %= 3600;
    min = sec / 60;
    sec %= 60;







    days = days - (31 + 28) + 719527;
    year = (days + 2) * 400 / (365 * 400 + 100 - 4 + 1);

    yday = days - (365 * year + year / 4 - year / 100 + year / 400);

    if (yday < 0) {
        leap = (year % 4 == 0) && (year % 100 || (year % 400 == 0));
        yday = 365 + leap + yday;
        year--;
    }
    mon = (yday + 31) * 10 / 306;



    mday = yday - (367 * mon / 12 - 30) + 1;

    if (yday >= 306) {

        year++;
        mon -= 10;







    } else {

        mon += 2;






    }

    tp->ngx_tm_sec = (ngx_tm_sec_t) sec;
    tp->ngx_tm_min = (ngx_tm_min_t) min;
    tp->ngx_tm_hour = (ngx_tm_hour_t) hour;
    tp->ngx_tm_mday = (ngx_tm_mday_t) mday;
    tp->ngx_tm_mon = (ngx_tm_mon_t) mon;
    tp->ngx_tm_year = (ngx_tm_year_t) year;
    tp->ngx_tm_wday = (ngx_tm_wday_t) wday;
}
