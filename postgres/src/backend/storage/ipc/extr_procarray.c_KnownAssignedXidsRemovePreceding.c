
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {scalar_t__ numKnownAssignedXids; int headKnownAssignedXids; int tailKnownAssignedXids; } ;
typedef TYPE_1__ ProcArrayStruct ;


 int Assert (int) ;
 int DEBUG4 ;
 int * KnownAssignedXids ;
 int KnownAssignedXidsCompress (int) ;
 int* KnownAssignedXidsValid ;
 int StandbyTransactionIdIsPrepared (int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 int elog (int ,char*,...) ;
 TYPE_1__* procArray ;
 int trace_recovery (int ) ;

__attribute__((used)) static void
KnownAssignedXidsRemovePreceding(TransactionId removeXid)
{
 ProcArrayStruct *pArray = procArray;
 int count = 0;
 int head,
    tail,
    i;

 if (!TransactionIdIsValid(removeXid))
 {
  elog(trace_recovery(DEBUG4), "removing all KnownAssignedXids");
  pArray->numKnownAssignedXids = 0;
  pArray->headKnownAssignedXids = pArray->tailKnownAssignedXids = 0;
  return;
 }

 elog(trace_recovery(DEBUG4), "prune KnownAssignedXids to %u", removeXid);





 tail = pArray->tailKnownAssignedXids;
 head = pArray->headKnownAssignedXids;

 for (i = tail; i < head; i++)
 {
  if (KnownAssignedXidsValid[i])
  {
   TransactionId knownXid = KnownAssignedXids[i];

   if (TransactionIdFollowsOrEquals(knownXid, removeXid))
    break;

   if (!StandbyTransactionIdIsPrepared(knownXid))
   {
    KnownAssignedXidsValid[i] = 0;
    count++;
   }
  }
 }

 pArray->numKnownAssignedXids -= count;
 Assert(pArray->numKnownAssignedXids >= 0);




 for (i = tail; i < head; i++)
 {
  if (KnownAssignedXidsValid[i])
   break;
 }
 if (i >= head)
 {

  pArray->headKnownAssignedXids = 0;
  pArray->tailKnownAssignedXids = 0;
 }
 else
 {
  pArray->tailKnownAssignedXids = i;
 }


 KnownAssignedXidsCompress(0);
}
