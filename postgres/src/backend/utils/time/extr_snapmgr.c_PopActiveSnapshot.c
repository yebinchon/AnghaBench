
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ active_count; scalar_t__ regd_count; } ;
struct TYPE_5__ {TYPE_3__* as_snap; struct TYPE_5__* as_next; } ;
typedef TYPE_1__ ActiveSnapshotElt ;


 TYPE_1__* ActiveSnapshot ;
 int Assert (int) ;
 int FreeSnapshot (TYPE_3__*) ;
 int * OldestActiveSnapshot ;
 int SnapshotResetXmin () ;
 int pfree (TYPE_1__*) ;

void
PopActiveSnapshot(void)
{
 ActiveSnapshotElt *newstack;

 newstack = ActiveSnapshot->as_next;

 Assert(ActiveSnapshot->as_snap->active_count > 0);

 ActiveSnapshot->as_snap->active_count--;

 if (ActiveSnapshot->as_snap->active_count == 0 &&
  ActiveSnapshot->as_snap->regd_count == 0)
  FreeSnapshot(ActiveSnapshot->as_snap);

 pfree(ActiveSnapshot);
 ActiveSnapshot = newstack;
 if (ActiveSnapshot == ((void*)0))
  OldestActiveSnapshot = ((void*)0);

 SnapshotResetXmin();
}
