
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_2__ {int node; int latestRemovedFullXid; } ;
typedef TYPE_1__ gistxlogPageReuse ;
typedef int XLogReaderState ;
typedef int TransactionId ;
typedef int FullTransactionId ;


 scalar_t__ InHotStandby ;
 int MaxTransactionId ;
 int ReadNextFullTransactionId () ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 int U64FromFullTransactionId (int ) ;
 scalar_t__ XLogRecGetData (int *) ;
 int XidFromFullTransactionId (int ) ;

__attribute__((used)) static void
gistRedoPageReuse(XLogReaderState *record)
{
 gistxlogPageReuse *xlrec = (gistxlogPageReuse *) XLogRecGetData(record);
 if (InHotStandby)
 {
  FullTransactionId latestRemovedFullXid = xlrec->latestRemovedFullXid;
  FullTransactionId nextFullXid = ReadNextFullTransactionId();
  uint64 diff;







  nextFullXid = ReadNextFullTransactionId();
  diff = U64FromFullTransactionId(nextFullXid) -
   U64FromFullTransactionId(latestRemovedFullXid);
  if (diff < MaxTransactionId / 2)
  {
   TransactionId latestRemovedXid;

   latestRemovedXid = XidFromFullTransactionId(latestRemovedFullXid);
   ResolveRecoveryConflictWithSnapshot(latestRemovedXid,
            xlrec->node);
  }
 }
}
