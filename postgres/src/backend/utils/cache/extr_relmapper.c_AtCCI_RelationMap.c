
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_mappings; } ;


 int active_local_updates ;
 int active_shared_updates ;
 int merge_map_updates (int *,TYPE_1__*,int) ;
 TYPE_1__ pending_local_updates ;
 TYPE_1__ pending_shared_updates ;

void
AtCCI_RelationMap(void)
{
 if (pending_shared_updates.num_mappings != 0)
 {
  merge_map_updates(&active_shared_updates,
        &pending_shared_updates,
        1);
  pending_shared_updates.num_mappings = 0;
 }
 if (pending_local_updates.num_mappings != 0)
 {
  merge_map_updates(&active_local_updates,
        &pending_local_updates,
        1);
  pending_local_updates.num_mappings = 0;
 }
}
