
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int timelib_tzinfo ;
struct TYPE_8__ {scalar_t__ first_last_day_of; scalar_t__ have_special_relative; scalar_t__ have_weekday_relative; } ;
struct TYPE_9__ {int sse_uptodate; TYPE_1__ relative; scalar_t__ have_relative; void* sse; int s; int i; int h; int d; int y; int m; } ;
typedef TYPE_2__ timelib_time ;
typedef void* timelib_sll ;


 int do_adjust_relative (TYPE_2__*) ;
 int do_adjust_special (TYPE_2__*) ;
 int do_adjust_special_early (TYPE_2__*) ;
 scalar_t__ do_adjust_timezone (TYPE_2__*,int *) ;
 scalar_t__ do_days (int ) ;
 scalar_t__ do_months (int ,int ) ;
 scalar_t__ do_time (int ,int ,int ) ;
 scalar_t__ do_years (int ) ;

void timelib_update_ts(timelib_time* time, timelib_tzinfo* tzi)
{
 timelib_sll res = 0;

 do_adjust_special_early(time);
 do_adjust_relative(time);
 do_adjust_special(time);
 res += do_years(time->y);
 res += do_months(time->m, time->y);
 res += do_days(time->d);
 res += do_time(time->h, time->i, time->s);
 time->sse = res;

 res += do_adjust_timezone(time, tzi);
 time->sse = res;

 time->sse_uptodate = 1;
 time->have_relative = time->relative.have_weekday_relative = time->relative.have_special_relative = time->relative.first_last_day_of = 0;
}
