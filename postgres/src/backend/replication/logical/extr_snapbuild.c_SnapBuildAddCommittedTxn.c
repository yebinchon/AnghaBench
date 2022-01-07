
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int TransactionId ;
struct TYPE_4__ {int xcnt; int xcnt_space; int * xip; } ;
struct TYPE_5__ {TYPE_1__ committed; } ;
typedef TYPE_2__ SnapBuild ;


 int Assert (int ) ;
 int DEBUG1 ;
 int TransactionIdIsValid (int ) ;
 int elog (int ,char*,int ) ;
 int * repalloc (int *,int) ;

__attribute__((used)) static void
SnapBuildAddCommittedTxn(SnapBuild *builder, TransactionId xid)
{
 Assert(TransactionIdIsValid(xid));

 if (builder->committed.xcnt == builder->committed.xcnt_space)
 {
  builder->committed.xcnt_space = builder->committed.xcnt_space * 2 + 1;

  elog(DEBUG1, "increasing space for committed transactions to %u",
    (uint32) builder->committed.xcnt_space);

  builder->committed.xip = repalloc(builder->committed.xip,
            builder->committed.xcnt_space * sizeof(TransactionId));
 }






 builder->committed.xip[builder->committed.xcnt++] = xid;
}
