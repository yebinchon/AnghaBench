
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {int gidlen; int nsubxacts; int xid; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
typedef int TransactionId ;
struct TYPE_4__ {int nextFullXid; } ;
typedef int FullTransactionId ;


 int AdvanceNextFullTransactionIdPastXid (int ) ;
 int Assert (int) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int MAXALIGN (int) ;
 int PrepareRedoRemove (int ,int) ;
 char* ReadTwoPhaseFile (int ,int) ;
 int RemoveTwoPhaseFile (int ,int) ;
 TYPE_2__* ShmemVariableCache ;
 int SubTransSetParent (int ,int ) ;
 scalar_t__ TransactionIdDidAbort (int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdFollows (int ,int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 int TwoPhaseStateLock ;
 int WARNING ;
 int XidFromFullTransactionId (int ) ;
 int XlogReadTwoPhaseData (scalar_t__,char**,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static char *
ProcessTwoPhaseBuffer(TransactionId xid,
       XLogRecPtr prepare_start_lsn,
       bool fromdisk,
       bool setParent, bool setNextXid)
{
 FullTransactionId nextFullXid = ShmemVariableCache->nextFullXid;
 TransactionId origNextXid = XidFromFullTransactionId(nextFullXid);
 TransactionId *subxids;
 char *buf;
 TwoPhaseFileHeader *hdr;
 int i;

 Assert(LWLockHeldByMeInMode(TwoPhaseStateLock, LW_EXCLUSIVE));

 if (!fromdisk)
  Assert(prepare_start_lsn != InvalidXLogRecPtr);


 if (TransactionIdDidCommit(xid) || TransactionIdDidAbort(xid))
 {
  if (fromdisk)
  {
   ereport(WARNING,
     (errmsg("removing stale two-phase state file for transaction %u",
       xid)));
   RemoveTwoPhaseFile(xid, 1);
  }
  else
  {
   ereport(WARNING,
     (errmsg("removing stale two-phase state from memory for transaction %u",
       xid)));
   PrepareRedoRemove(xid, 1);
  }
  return ((void*)0);
 }


 if (TransactionIdFollowsOrEquals(xid, origNextXid))
 {
  if (fromdisk)
  {
   ereport(WARNING,
     (errmsg("removing future two-phase state file for transaction %u",
       xid)));
   RemoveTwoPhaseFile(xid, 1);
  }
  else
  {
   ereport(WARNING,
     (errmsg("removing future two-phase state from memory for transaction %u",
       xid)));
   PrepareRedoRemove(xid, 1);
  }
  return ((void*)0);
 }

 if (fromdisk)
 {

  buf = ReadTwoPhaseFile(xid, 0);
 }
 else
 {

  XlogReadTwoPhaseData(prepare_start_lsn, &buf, ((void*)0));
 }


 hdr = (TwoPhaseFileHeader *) buf;
 if (!TransactionIdEquals(hdr->xid, xid))
 {
  if (fromdisk)
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("corrupted two-phase state file for transaction %u",
       xid)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("corrupted two-phase state in memory for transaction %u",
       xid)));
 }





 subxids = (TransactionId *) (buf +
         MAXALIGN(sizeof(TwoPhaseFileHeader)) +
         MAXALIGN(hdr->gidlen));
 for (i = 0; i < hdr->nsubxacts; i++)
 {
  TransactionId subxid = subxids[i];

  Assert(TransactionIdFollows(subxid, xid));


  if (setNextXid)
   AdvanceNextFullTransactionIdPastXid(subxid);

  if (setParent)
   SubTransSetParent(subxid, xid);
 }

 return buf;
}
