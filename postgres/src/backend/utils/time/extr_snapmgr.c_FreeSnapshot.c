
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ regd_count; scalar_t__ active_count; int copied; } ;
typedef TYPE_1__* Snapshot ;


 int Assert (int) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
FreeSnapshot(Snapshot snapshot)
{
 Assert(snapshot->regd_count == 0);
 Assert(snapshot->active_count == 0);
 Assert(snapshot->copied);

 pfree(snapshot);
}
