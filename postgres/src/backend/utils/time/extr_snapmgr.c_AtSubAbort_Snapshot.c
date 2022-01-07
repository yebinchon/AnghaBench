
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int active_count; scalar_t__ regd_count; } ;
struct TYPE_5__ {int as_level; TYPE_3__* as_snap; struct TYPE_5__* as_next; } ;
typedef TYPE_1__ ActiveSnapshotElt ;


 TYPE_1__* ActiveSnapshot ;
 int Assert (int) ;
 int FreeSnapshot (TYPE_3__*) ;
 int * OldestActiveSnapshot ;
 int SnapshotResetXmin () ;
 int pfree (TYPE_1__*) ;

void
AtSubAbort_Snapshot(int level)
{

 while (ActiveSnapshot && ActiveSnapshot->as_level >= level)
 {
  ActiveSnapshotElt *next;

  next = ActiveSnapshot->as_next;





  Assert(ActiveSnapshot->as_snap->active_count >= 1);
  ActiveSnapshot->as_snap->active_count -= 1;

  if (ActiveSnapshot->as_snap->active_count == 0 &&
   ActiveSnapshot->as_snap->regd_count == 0)
   FreeSnapshot(ActiveSnapshot->as_snap);


  pfree(ActiveSnapshot);

  ActiveSnapshot = next;
  if (ActiveSnapshot == ((void*)0))
   OldestActiveSnapshot = ((void*)0);
 }

 SnapshotResetXmin();
}
