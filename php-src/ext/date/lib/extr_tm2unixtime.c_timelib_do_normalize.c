
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ us; int s; int i; int h; int d; int m; int y; } ;
typedef TYPE_1__ timelib_time ;


 scalar_t__ TIMELIB_UNSET ;
 int do_range_limit (int,int,int,int*,int*) ;
 scalar_t__ do_range_limit_days (int*,int*,int*) ;
 int magic_date_calc (TYPE_1__*) ;

void timelib_do_normalize(timelib_time* time)
{
 if (time->us != TIMELIB_UNSET) do_range_limit(0, 1000000, 1000000, &time->us, &time->s);
 if (time->s != TIMELIB_UNSET) do_range_limit(0, 60, 60, &time->s, &time->i);
 if (time->s != TIMELIB_UNSET) do_range_limit(0, 60, 60, &time->i, &time->h);
 if (time->s != TIMELIB_UNSET) do_range_limit(0, 24, 24, &time->h, &time->d);
 do_range_limit(1, 13, 12, &time->m, &time->y);


 if (time->y == 1970 && time->m == 1 && time->d != 1) {
  magic_date_calc(time);
 }

 do {} while (do_range_limit_days(&time->y, &time->m, &time->d));
 do_range_limit(1, 13, 12, &time->m, &time->y);
}
