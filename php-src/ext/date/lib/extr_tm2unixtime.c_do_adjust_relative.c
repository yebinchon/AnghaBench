
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int first_last_day_of; scalar_t__ y; scalar_t__ m; scalar_t__ d; scalar_t__ h; scalar_t__ i; scalar_t__ s; scalar_t__ us; scalar_t__ have_weekday_relative; } ;
struct TYPE_7__ {int d; int m; TYPE_1__ relative; int y; int h; int i; int s; int us; scalar_t__ have_relative; } ;
typedef TYPE_2__ timelib_time ;




 int do_adjust_for_weekday (TYPE_2__*) ;
 int timelib_do_normalize (TYPE_2__*) ;

__attribute__((used)) static void do_adjust_relative(timelib_time* time)
{
 if (time->relative.have_weekday_relative) {
  do_adjust_for_weekday(time);
 }
 timelib_do_normalize(time);

 if (time->have_relative) {
  time->us += time->relative.us;

  time->s += time->relative.s;
  time->i += time->relative.i;
  time->h += time->relative.h;

  time->d += time->relative.d;
  time->m += time->relative.m;
  time->y += time->relative.y;
 }

 switch (time->relative.first_last_day_of) {
  case 129:
   time->d = 1;
   break;
  case 128:
   time->d = 0;
   time->m++;
   break;
 }

 timelib_do_normalize(time);
}
