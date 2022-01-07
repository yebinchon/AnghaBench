
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ttinfo ;
struct TYPE_4__ {size_t timecnt; int typecnt; } ;
struct TYPE_5__ {scalar_t__* trans; size_t* trans_idx; TYPE_1__ bit64; int * type; } ;
typedef TYPE_2__ timelib_tzinfo ;
typedef scalar_t__ timelib_sll ;


 scalar_t__ INT64_MIN ;

__attribute__((used)) static ttinfo* fetch_timezone_offset(timelib_tzinfo *tz, timelib_sll ts, timelib_sll *transition_time)
{
 uint32_t i;



 if (!tz->bit64.timecnt || !tz->trans) {
  if (tz->bit64.typecnt == 1) {
   *transition_time = INT64_MIN;
   return &(tz->type[0]);
  }
  return ((void*)0);
 }





 if (ts < tz->trans[0]) {
  *transition_time = INT64_MIN;
  return &(tz->type[0]);
 }



 for (i = 0; i < tz->bit64.timecnt; i++) {
  if (ts < tz->trans[i]) {
   *transition_time = tz->trans[i - 1];
   return &(tz->type[tz->trans_idx[i - 1]]);
  }
 }
 *transition_time = tz->trans[tz->bit64.timecnt - 1];
 return &(tz->type[tz->trans_idx[tz->bit64.timecnt - 1]]);
}
