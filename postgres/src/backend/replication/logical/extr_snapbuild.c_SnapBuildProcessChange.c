
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {scalar_t__ state; int * snapshot; int reorder; } ;
typedef TYPE_1__ SnapBuild ;


 int ReorderBufferSetBaseSnapshot (int ,int ,int ,int *) ;
 int ReorderBufferXidHasBaseSnapshot (int ,int ) ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 int * SnapBuildBuildSnapshot (TYPE_1__*) ;
 int SnapBuildNextPhaseAt (TYPE_1__*) ;
 int SnapBuildSnapIncRefcount (int *) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

bool
SnapBuildProcessChange(SnapBuild *builder, TransactionId xid, XLogRecPtr lsn)
{




 if (builder->state < SNAPBUILD_FULL_SNAPSHOT)
  return 0;






 if (builder->state < SNAPBUILD_CONSISTENT &&
  TransactionIdPrecedes(xid, SnapBuildNextPhaseAt(builder)))
  return 0;





 if (!ReorderBufferXidHasBaseSnapshot(builder->reorder, xid))
 {

  if (builder->snapshot == ((void*)0))
  {
   builder->snapshot = SnapBuildBuildSnapshot(builder);

   SnapBuildSnapIncRefcount(builder->snapshot);
  }





  SnapBuildSnapIncRefcount(builder->snapshot);
  ReorderBufferSetBaseSnapshot(builder->reorder, xid, lsn,
          builder->snapshot);
 }

 return 1;
}
