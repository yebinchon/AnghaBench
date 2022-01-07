
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int timelib_sll ;
struct TYPE_11__ {int unit; int multiplier; } ;
typedef TYPE_4__ timelib_relunit ;
struct TYPE_12__ {TYPE_3__* time; } ;
struct TYPE_8__ {int type; int amount; } ;
struct TYPE_9__ {int us; int s; int i; int h; int d; int m; int y; int weekday; int weekday_behavior; TYPE_1__ special; } ;
struct TYPE_10__ {TYPE_2__ relative; } ;
typedef TYPE_5__ Scanner ;



 int TIMELIB_HAVE_SPECIAL_RELATIVE () ;
 int TIMELIB_HAVE_WEEKDAY_RELATIVE () ;






 int TIMELIB_UNHAVE_TIME () ;


 TYPE_4__* timelib_lookup_relunit (char**) ;

__attribute__((used)) static void timelib_set_relative(char **ptr, timelib_sll amount, int behavior, Scanner *s)
{
 const timelib_relunit* relunit;

 if (!(relunit = timelib_lookup_relunit(ptr))) {
  return;
 }

 switch (relunit->unit) {
  case 134: s->time->relative.us += amount * relunit->multiplier; break;
  case 131: s->time->relative.s += amount * relunit->multiplier; break;
  case 133: s->time->relative.i += amount * relunit->multiplier; break;
  case 135: s->time->relative.h += amount * relunit->multiplier; break;
  case 136: s->time->relative.d += amount * relunit->multiplier; break;
  case 132: s->time->relative.m += amount * relunit->multiplier; break;
  case 128: s->time->relative.y += amount * relunit->multiplier; break;

  case 129:
   TIMELIB_HAVE_WEEKDAY_RELATIVE();
   TIMELIB_UNHAVE_TIME();
   s->time->relative.d += (amount > 0 ? amount - 1 : amount) * 7;
   s->time->relative.weekday = relunit->multiplier;
   s->time->relative.weekday_behavior = behavior;
   break;

  case 130:
   TIMELIB_HAVE_SPECIAL_RELATIVE();
   TIMELIB_UNHAVE_TIME();
   s->time->relative.special.type = relunit->multiplier;
   s->time->relative.special.amount = amount;
 }
}
