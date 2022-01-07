
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fin_time; size_t index; } ;
typedef TYPE_1__ timeout_params ;
typedef scalar_t__ TimestampTz ;
typedef size_t TimeoutId ;
struct TYPE_5__ {int indicator; scalar_t__ fin_time; scalar_t__ start_time; scalar_t__ active; int * timeout_handler; } ;


 int Assert (int ) ;
 TYPE_1__** active_timeouts ;
 TYPE_2__* all_timeouts ;
 int all_timeouts_initialized ;
 int find_active_timeout (size_t) ;
 int insert_timeout (size_t,int) ;
 int num_active_timeouts ;
 int remove_timeout_index (int ) ;

__attribute__((used)) static void
enable_timeout(TimeoutId id, TimestampTz now, TimestampTz fin_time)
{
 int i;


 Assert(all_timeouts_initialized);
 Assert(all_timeouts[id].timeout_handler != ((void*)0));





 if (all_timeouts[id].active)
  remove_timeout_index(find_active_timeout(id));





 for (i = 0; i < num_active_timeouts; i++)
 {
  timeout_params *old_timeout = active_timeouts[i];

  if (fin_time < old_timeout->fin_time)
   break;
  if (fin_time == old_timeout->fin_time && id < old_timeout->index)
   break;
 }




 all_timeouts[id].indicator = 0;
 all_timeouts[id].start_time = now;
 all_timeouts[id].fin_time = fin_time;

 insert_timeout(id, i);
}
