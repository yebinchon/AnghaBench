
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t TimeoutId ;
struct TYPE_2__ {int indicator; } ;


 TYPE_1__* all_timeouts ;

bool
get_timeout_indicator(TimeoutId id, bool reset_indicator)
{
 if (all_timeouts[id].indicator)
 {
  if (reset_indicator)
   all_timeouts[id].indicator = 0;
  return 1;
 }
 return 0;
}
