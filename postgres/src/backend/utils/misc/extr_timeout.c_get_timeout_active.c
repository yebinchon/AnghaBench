
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t TimeoutId ;
struct TYPE_2__ {int active; } ;


 TYPE_1__* all_timeouts ;

bool
get_timeout_active(TimeoutId id)
{
 return all_timeouts[id].active;
}
