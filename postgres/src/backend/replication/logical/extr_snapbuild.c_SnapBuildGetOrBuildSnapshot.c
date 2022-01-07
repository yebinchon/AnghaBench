
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {scalar_t__ state; int * snapshot; } ;
typedef int * Snapshot ;
typedef TYPE_1__ SnapBuild ;


 int Assert (int) ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 int * SnapBuildBuildSnapshot (TYPE_1__*) ;
 int SnapBuildSnapIncRefcount (int *) ;

Snapshot
SnapBuildGetOrBuildSnapshot(SnapBuild *builder, TransactionId xid)
{
 Assert(builder->state == SNAPBUILD_CONSISTENT);


 if (builder->snapshot == ((void*)0))
 {
  builder->snapshot = SnapBuildBuildSnapshot(builder);

  SnapBuildSnapIncRefcount(builder->snapshot);
 }

 return builder->snapshot;
}
