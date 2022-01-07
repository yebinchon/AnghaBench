
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
typedef size_t TimeoutId ;
struct TYPE_2__ {int start_time; } ;


 TYPE_1__* all_timeouts ;

TimestampTz
get_timeout_start_time(TimeoutId id)
{
 return all_timeouts[id].start_time;
}
