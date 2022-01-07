
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {int first_last_day_of; int m; TYPE_1__ special; scalar_t__ have_special_relative; } ;
struct TYPE_8__ {int d; int m; TYPE_2__ relative; } ;
typedef TYPE_3__ timelib_time ;






 int timelib_do_normalize (TYPE_3__*) ;

__attribute__((used)) static void do_adjust_special_early(timelib_time* time)
{
 if (time->relative.have_special_relative) {
  switch (time->relative.special.type) {
   case 131:
    time->d = 1;
    time->m += time->relative.m;
    time->relative.m = 0;
    break;
   case 128:
    time->d = 1;
    time->m += time->relative.m + 1;
    time->relative.m = 0;
    break;
  }
 }
 switch (time->relative.first_last_day_of) {
  case 130:
   time->d = 1;
   break;
  case 129:
   time->d = 0;
   time->m++;
   break;
 }
 timelib_do_normalize(time);
}
