
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ trans; } ;
typedef TYPE_2__ tlinfo ;
struct TYPE_6__ {int leapcnt; } ;
struct TYPE_8__ {TYPE_2__* leap_times; TYPE_1__ bit64; } ;
typedef TYPE_3__ timelib_tzinfo ;
typedef scalar_t__ timelib_sll ;



__attribute__((used)) static tlinfo* fetch_leaptime_offset(timelib_tzinfo *tz, timelib_sll ts)
{
 int i;

 if (!tz->bit64.leapcnt || !tz->leap_times) {
  return ((void*)0);
 }

 for (i = tz->bit64.leapcnt - 1; i > 0; i--) {
  if (ts > tz->leap_times[i].trans) {
   return &(tz->leap_times[i]);
  }
 }
 return ((void*)0);
}
