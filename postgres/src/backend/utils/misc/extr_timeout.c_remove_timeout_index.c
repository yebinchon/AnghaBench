
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;


 int Assert (int) ;
 int FATAL ;
 TYPE_1__** active_timeouts ;
 int elog (int ,char*,int,int) ;
 int num_active_timeouts ;

__attribute__((used)) static void
remove_timeout_index(int index)
{
 int i;

 if (index < 0 || index >= num_active_timeouts)
  elog(FATAL, "timeout index %d out of range 0..%d", index,
    num_active_timeouts - 1);

 Assert(active_timeouts[index]->active);
 active_timeouts[index]->active = 0;

 for (i = index + 1; i < num_active_timeouts; i++)
  active_timeouts[i - 1] = active_timeouts[i];

 num_active_timeouts--;
}
