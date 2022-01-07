
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ copied; } ;
typedef TYPE_1__* Snapshot ;
typedef int ReorderBuffer ;


 int SnapBuildSnapDecRefcount (TYPE_1__*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
ReorderBufferFreeSnap(ReorderBuffer *rb, Snapshot snap)
{
 if (snap->copied)
  pfree(snap);
 else
  SnapBuildSnapDecRefcount(snap);
}
