
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isdst; } ;
typedef TYPE_1__ ttinfo ;
typedef int timelib_tzinfo ;
typedef int timelib_sll ;


 TYPE_1__* fetch_timezone_offset (int *,int ,int *) ;

int timelib_timestamp_is_in_dst(timelib_sll ts, timelib_tzinfo *tz)
{
 ttinfo *to;
 timelib_sll dummy;

 if ((to = fetch_timezone_offset(tz, ts, &dummy))) {
  return to->isdst;
 }
 return -1;
}
