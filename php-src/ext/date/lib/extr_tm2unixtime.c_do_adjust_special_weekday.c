
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int amount; } ;
struct TYPE_6__ {TYPE_1__ special; } ;
struct TYPE_7__ {int d; int m; int y; TYPE_2__ relative; } ;
typedef TYPE_3__ timelib_time ;
typedef int timelib_sll ;


 int timelib_day_of_week (int ,int ,int) ;

__attribute__((used)) static void do_adjust_special_weekday(timelib_time* time)
{
 timelib_sll count, dow, rem;

 count = time->relative.special.amount;
 dow = timelib_day_of_week(time->y, time->m, time->d);


 time->d += (count / 5) * 7;


 rem = (count % 5);

 if (count > 0) {
  if (rem == 0) {

   if (dow == 0) {
    time->d -= 2;
   } else if (dow == 6) {
    time->d -= 1;
   }
  } else if (dow == 6) {


   time->d += 1;
  } else if (dow + rem > 5) {


   time->d += 2;
  }
 } else {



  if (rem == 0) {
   if (dow == 6) {
    time->d += 2;
   } else if (dow == 0) {
    time->d += 1;
   }
  } else if (dow == 0) {
   time->d -= 1;
  } else if (dow + rem < 1) {
   time->d -= 2;
  }
 }

 time->d += rem;
}
