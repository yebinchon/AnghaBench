
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pageno; int oldestXid; } ;
typedef TYPE_2__ xl_commit_ts_truncate ;
struct TYPE_9__ {int nodeid; int timestamp; int mainxid; } ;
typedef TYPE_3__ xl_commit_ts_set ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int TransactionId ;
struct TYPE_10__ {TYPE_1__* shared; } ;
struct TYPE_7__ {int latest_page_number; int * page_dirty; } ;


 int AdvanceOldestCommitTsXid (int ) ;
 int Assert (int) ;
 scalar_t__ COMMIT_TS_SETTS ;
 scalar_t__ COMMIT_TS_TRUNCATE ;
 scalar_t__ COMMIT_TS_ZEROPAGE ;
 int CommitTsControlLock ;
 TYPE_4__* CommitTsCtl ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PANIC ;
 int SimpleLruTruncate (TYPE_4__*,int ) ;
 int SimpleLruWritePage (TYPE_4__*,int) ;
 int SizeOfCommitTsSet ;
 int TransactionTreeSetCommitTsData (int ,int,int*,int ,int ,int) ;
 scalar_t__ XLR_INFO_MASK ;
 int XLogRecGetData (int *) ;
 int XLogRecGetDataLen (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;
 int ZeroCommitTsPage (int,int) ;
 int elog (int ,char*,scalar_t__) ;
 int memcpy (int*,int,int) ;
 int* palloc (int) ;
 int pfree (int*) ;

void
commit_ts_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == COMMIT_TS_ZEROPAGE)
 {
  int pageno;
  int slotno;

  memcpy(&pageno, XLogRecGetData(record), sizeof(int));

  LWLockAcquire(CommitTsControlLock, LW_EXCLUSIVE);

  slotno = ZeroCommitTsPage(pageno, 0);
  SimpleLruWritePage(CommitTsCtl, slotno);
  Assert(!CommitTsCtl->shared->page_dirty[slotno]);

  LWLockRelease(CommitTsControlLock);
 }
 else if (info == COMMIT_TS_TRUNCATE)
 {
  xl_commit_ts_truncate *trunc = (xl_commit_ts_truncate *) XLogRecGetData(record);

  AdvanceOldestCommitTsXid(trunc->oldestXid);





  CommitTsCtl->shared->latest_page_number = trunc->pageno;

  SimpleLruTruncate(CommitTsCtl, trunc->pageno);
 }
 else if (info == COMMIT_TS_SETTS)
 {
  xl_commit_ts_set *setts = (xl_commit_ts_set *) XLogRecGetData(record);
  int nsubxids;
  TransactionId *subxids;

  nsubxids = ((XLogRecGetDataLen(record) - SizeOfCommitTsSet) /
     sizeof(TransactionId));
  if (nsubxids > 0)
  {
   subxids = palloc(sizeof(TransactionId) * nsubxids);
   memcpy(subxids,
       XLogRecGetData(record) + SizeOfCommitTsSet,
       sizeof(TransactionId) * nsubxids);
  }
  else
   subxids = ((void*)0);

  TransactionTreeSetCommitTsData(setts->mainxid, nsubxids, subxids,
            setts->timestamp, setts->nodeid, 1);
  if (subxids)
   pfree(subxids);
 }
 else
  elog(PANIC, "commit_ts_redo: unknown op code %u", info);
}
