
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weekday_behavior; scalar_t__ weekday; scalar_t__ d; scalar_t__ have_weekday_relative; } ;
struct TYPE_5__ {scalar_t__ d; TYPE_1__ relative; int m; int y; } ;
typedef TYPE_2__ timelib_time ;
typedef scalar_t__ timelib_sll ;


 scalar_t__ abs (scalar_t__) ;
 scalar_t__ timelib_day_of_week (int ,int ,scalar_t__) ;

__attribute__((used)) static void do_adjust_for_weekday(timelib_time* time)
{
 timelib_sll current_dow, difference;

 current_dow = timelib_day_of_week(time->y, time->m, time->d);
 if (time->relative.weekday_behavior == 2)
 {

  if (current_dow == 0 && time->relative.weekday != 0) {
   time->relative.weekday -= 7;
  }



  if (time->relative.weekday == 0 && current_dow != 0) {
   time->relative.weekday = 7;
  }

  time->d -= current_dow;
  time->d += time->relative.weekday;
  return;
 }
 difference = time->relative.weekday - current_dow;
 if ((time->relative.d < 0 && difference < 0) || (time->relative.d >= 0 && difference <= -time->relative.weekday_behavior)) {
  difference += 7;
 }
 if (time->relative.weekday >= 0) {
  time->d += difference;
 } else {
  time->d -= (7 - (abs(time->relative.weekday) - current_dow));
 }
 time->relative.have_weekday_relative = 0;
}
