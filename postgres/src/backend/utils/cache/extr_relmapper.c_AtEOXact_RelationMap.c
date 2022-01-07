
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_mappings; } ;
struct TYPE_7__ {scalar_t__ num_mappings; } ;
struct TYPE_6__ {scalar_t__ num_mappings; } ;


 int Assert (int) ;
 TYPE_1__ active_local_updates ;
 TYPE_1__ active_shared_updates ;
 TYPE_3__ pending_local_updates ;
 TYPE_2__ pending_shared_updates ;
 int perform_relmap_update (int,TYPE_1__*) ;

void
AtEOXact_RelationMap(bool isCommit, bool isParallelWorker)
{
 if (isCommit && !isParallelWorker)
 {





  Assert(pending_shared_updates.num_mappings == 0);
  Assert(pending_local_updates.num_mappings == 0);




  if (active_shared_updates.num_mappings != 0)
  {
   perform_relmap_update(1, &active_shared_updates);
   active_shared_updates.num_mappings = 0;
  }
  if (active_local_updates.num_mappings != 0)
  {
   perform_relmap_update(0, &active_local_updates);
   active_local_updates.num_mappings = 0;
  }
 }
 else
 {

  Assert(!isParallelWorker || pending_shared_updates.num_mappings == 0);
  Assert(!isParallelWorker || pending_local_updates.num_mappings == 0);

  active_shared_updates.num_mappings = 0;
  active_local_updates.num_mappings = 0;
  pending_shared_updates.num_mappings = 0;
  pending_local_updates.num_mappings = 0;
 }
}
