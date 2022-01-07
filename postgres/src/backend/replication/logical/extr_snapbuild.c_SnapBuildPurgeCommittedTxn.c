
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int TransactionId ;
struct TYPE_4__ {int xcnt; int * xip; } ;
struct TYPE_5__ {TYPE_1__ committed; int xmax; int xmin; int context; } ;
typedef TYPE_2__ SnapBuild ;


 int DEBUG3 ;
 int * MemoryContextAlloc (int ,int) ;
 scalar_t__ NormalTransactionIdPrecedes (int ,int ) ;
 int TransactionIdIsNormal (int ) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int pfree (int *) ;

__attribute__((used)) static void
SnapBuildPurgeCommittedTxn(SnapBuild *builder)
{
 int off;
 TransactionId *workspace;
 int surviving_xids = 0;


 if (!TransactionIdIsNormal(builder->xmin))
  return;


 workspace =
  MemoryContextAlloc(builder->context,
         builder->committed.xcnt * sizeof(TransactionId));


 for (off = 0; off < builder->committed.xcnt; off++)
 {
  if (NormalTransactionIdPrecedes(builder->committed.xip[off],
          builder->xmin))
   ;
  else
   workspace[surviving_xids++] = builder->committed.xip[off];
 }


 memcpy(builder->committed.xip, workspace,
     surviving_xids * sizeof(TransactionId));

 elog(DEBUG3, "purged committed transactions from %u to %u, xmin: %u, xmax: %u",
   (uint32) builder->committed.xcnt, (uint32) surviving_xids,
   builder->xmin, builder->xmax);
 builder->committed.xcnt = surviving_xids;

 pfree(workspace);
}
