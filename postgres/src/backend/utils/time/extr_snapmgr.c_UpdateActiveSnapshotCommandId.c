
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* as_snap; } ;
struct TYPE_3__ {int active_count; scalar_t__ regd_count; scalar_t__ curcid; } ;
typedef scalar_t__ CommandId ;


 TYPE_2__* ActiveSnapshot ;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ GetCurrentCommandId (int) ;
 scalar_t__ IsInParallelMode () ;
 int elog (int ,char*) ;

void
UpdateActiveSnapshotCommandId(void)
{
 CommandId save_curcid,
    curcid;

 Assert(ActiveSnapshot != ((void*)0));
 Assert(ActiveSnapshot->as_snap->active_count == 1);
 Assert(ActiveSnapshot->as_snap->regd_count == 0);
 save_curcid = ActiveSnapshot->as_snap->curcid;
 curcid = GetCurrentCommandId(0);
 if (IsInParallelMode() && save_curcid != curcid)
  elog(ERROR, "cannot modify commandid in active snapshot during a parallel operation");
 ActiveSnapshot->as_snap->curcid = curcid;
}
