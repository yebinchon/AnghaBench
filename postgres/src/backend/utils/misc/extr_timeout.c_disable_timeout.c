
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t TimeoutId ;
struct TYPE_2__ {int indicator; scalar_t__ active; int * timeout_handler; } ;


 int Assert (int ) ;
 int GetCurrentTimestamp () ;
 TYPE_1__* all_timeouts ;
 int all_timeouts_initialized ;
 int disable_alarm () ;
 int find_active_timeout (size_t) ;
 scalar_t__ num_active_timeouts ;
 int remove_timeout_index (int ) ;
 int schedule_alarm (int ) ;

void
disable_timeout(TimeoutId id, bool keep_indicator)
{

 Assert(all_timeouts_initialized);
 Assert(all_timeouts[id].timeout_handler != ((void*)0));


 disable_alarm();


 if (all_timeouts[id].active)
  remove_timeout_index(find_active_timeout(id));


 if (!keep_indicator)
  all_timeouts[id].indicator = 0;


 if (num_active_timeouts > 0)
  schedule_alarm(GetCurrentTimestamp());
}
