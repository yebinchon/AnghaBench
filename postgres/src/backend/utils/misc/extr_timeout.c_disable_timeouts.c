
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t TimeoutId ;
struct TYPE_5__ {int indicator; scalar_t__ active; int * timeout_handler; } ;
struct TYPE_4__ {size_t id; int keep_indicator; } ;
typedef TYPE_1__ DisableTimeoutParams ;


 int Assert (int ) ;
 int GetCurrentTimestamp () ;
 TYPE_3__* all_timeouts ;
 int all_timeouts_initialized ;
 int disable_alarm () ;
 int find_active_timeout (size_t) ;
 scalar_t__ num_active_timeouts ;
 int remove_timeout_index (int ) ;
 int schedule_alarm (int ) ;

void
disable_timeouts(const DisableTimeoutParams *timeouts, int count)
{
 int i;

 Assert(all_timeouts_initialized);


 disable_alarm();


 for (i = 0; i < count; i++)
 {
  TimeoutId id = timeouts[i].id;

  Assert(all_timeouts[id].timeout_handler != ((void*)0));

  if (all_timeouts[id].active)
   remove_timeout_index(find_active_timeout(id));

  if (!timeouts[i].keep_indicator)
   all_timeouts[id].indicator = 0;
 }


 if (num_active_timeouts > 0)
  schedule_alarm(GetCurrentTimestamp());
}
