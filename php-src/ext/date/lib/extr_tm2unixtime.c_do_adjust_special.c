
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct TYPE_7__ {TYPE_4__ special; scalar_t__ have_special_relative; } ;
struct TYPE_8__ {TYPE_1__ relative; } ;
typedef TYPE_2__ timelib_time ;



 int do_adjust_special_weekday (TYPE_2__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int timelib_do_normalize (TYPE_2__*) ;

__attribute__((used)) static void do_adjust_special(timelib_time* time)
{
 if (time->relative.have_special_relative) {
  switch (time->relative.special.type) {
   case 128:
    do_adjust_special_weekday(time);
    break;
  }
 }
 timelib_do_normalize(time);
 memset(&(time->relative.special), 0, sizeof(time->relative.special));
}
