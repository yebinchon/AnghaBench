
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oldestXid; int pageno; } ;
typedef TYPE_1__ xl_commit_ts_truncate ;
struct TYPE_4__ {int mainxid; int nodeid; int timestamp; } ;
typedef TYPE_2__ xl_commit_ts_set ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int TransactionId ;
typedef int StringInfo ;


 scalar_t__ COMMIT_TS_SETTS ;
 scalar_t__ COMMIT_TS_TRUNCATE ;
 scalar_t__ COMMIT_TS_ZEROPAGE ;
 int SizeOfCommitTsSet ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetDataLen (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int,...) ;
 int memcpy (int*,char*,int) ;
 int* palloc (int) ;
 int pfree (int*) ;
 int timestamptz_to_str (int ) ;

void
commit_ts_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == COMMIT_TS_ZEROPAGE)
 {
  int pageno;

  memcpy(&pageno, rec, sizeof(int));
  appendStringInfo(buf, "%d", pageno);
 }
 else if (info == COMMIT_TS_TRUNCATE)
 {
  xl_commit_ts_truncate *trunc = (xl_commit_ts_truncate *) rec;

  appendStringInfo(buf, "pageno %d, oldestXid %u",
       trunc->pageno, trunc->oldestXid);
 }
 else if (info == COMMIT_TS_SETTS)
 {
  xl_commit_ts_set *xlrec = (xl_commit_ts_set *) rec;
  int nsubxids;

  appendStringInfo(buf, "set %s/%d for: %u",
       timestamptz_to_str(xlrec->timestamp),
       xlrec->nodeid,
       xlrec->mainxid);
  nsubxids = ((XLogRecGetDataLen(record) - SizeOfCommitTsSet) /
     sizeof(TransactionId));
  if (nsubxids > 0)
  {
   int i;
   TransactionId *subxids;

   subxids = palloc(sizeof(TransactionId) * nsubxids);
   memcpy(subxids,
       XLogRecGetData(record) + SizeOfCommitTsSet,
       sizeof(TransactionId) * nsubxids);
   for (i = 0; i < nsubxids; i++)
    appendStringInfo(buf, ", %u", subxids[i]);
   pfree(subxids);
  }
 }
}
