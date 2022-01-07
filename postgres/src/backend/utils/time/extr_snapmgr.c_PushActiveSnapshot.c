
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* as_snap; int as_level; void* as_next; } ;
struct TYPE_10__ {int active_count; int copied; } ;
typedef TYPE_1__* Snapshot ;
typedef TYPE_2__ ActiveSnapshotElt ;


 void* ActiveSnapshot ;
 int Assert (int) ;
 TYPE_1__* CopySnapshot (TYPE_1__*) ;
 TYPE_1__* CurrentSnapshot ;
 int GetCurrentTransactionNestLevel () ;
 TYPE_1__* InvalidSnapshot ;
 TYPE_2__* MemoryContextAlloc (int ,int) ;
 int * OldestActiveSnapshot ;
 TYPE_1__* SecondarySnapshot ;
 int TopTransactionContext ;

void
PushActiveSnapshot(Snapshot snap)
{
 ActiveSnapshotElt *newactive;

 Assert(snap != InvalidSnapshot);

 newactive = MemoryContextAlloc(TopTransactionContext, sizeof(ActiveSnapshotElt));





 if (snap == CurrentSnapshot || snap == SecondarySnapshot || !snap->copied)
  newactive->as_snap = CopySnapshot(snap);
 else
  newactive->as_snap = snap;

 newactive->as_next = ActiveSnapshot;
 newactive->as_level = GetCurrentTransactionNestLevel();

 newactive->as_snap->active_count++;

 ActiveSnapshot = newactive;
 if (OldestActiveSnapshot == ((void*)0))
  OldestActiveSnapshot = ActiveSnapshot;
}
