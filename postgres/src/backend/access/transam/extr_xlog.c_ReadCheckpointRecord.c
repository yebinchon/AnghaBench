
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__ xl_rmid; int xl_info; scalar_t__ xl_tot_len; } ;
typedef TYPE_1__ XLogRecord ;
typedef int XLogRecPtr ;
typedef int XLogReaderState ;
typedef int CheckPoint ;


 int LOG ;
 scalar_t__ RM_XLOG_ID ;
 TYPE_1__* ReadRecord (int *,int ,int ,int) ;
 scalar_t__ SizeOfXLogRecord ;
 scalar_t__ SizeOfXLogRecordDataHeaderShort ;
 int XLOG_CHECKPOINT_ONLINE ;
 int XLOG_CHECKPOINT_SHUTDOWN ;
 int XLR_INFO_MASK ;
 int XRecOffIsValid (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static XLogRecord *
ReadCheckpointRecord(XLogReaderState *xlogreader, XLogRecPtr RecPtr,
      int whichChkpt, bool report)
{
 XLogRecord *record;
 uint8 info;

 if (!XRecOffIsValid(RecPtr))
 {
  if (!report)
   return ((void*)0);

  switch (whichChkpt)
  {
   case 1:
    ereport(LOG,
      (errmsg("invalid primary checkpoint link in control file")));
    break;
   default:
    ereport(LOG,
      (errmsg("invalid checkpoint link in backup_label file")));
    break;
  }
  return ((void*)0);
 }

 record = ReadRecord(xlogreader, RecPtr, LOG, 1);

 if (record == ((void*)0))
 {
  if (!report)
   return ((void*)0);

  switch (whichChkpt)
  {
   case 1:
    ereport(LOG,
      (errmsg("invalid primary checkpoint record")));
    break;
   default:
    ereport(LOG,
      (errmsg("invalid checkpoint record")));
    break;
  }
  return ((void*)0);
 }
 if (record->xl_rmid != RM_XLOG_ID)
 {
  switch (whichChkpt)
  {
   case 1:
    ereport(LOG,
      (errmsg("invalid resource manager ID in primary checkpoint record")));
    break;
   default:
    ereport(LOG,
      (errmsg("invalid resource manager ID in checkpoint record")));
    break;
  }
  return ((void*)0);
 }
 info = record->xl_info & ~XLR_INFO_MASK;
 if (info != XLOG_CHECKPOINT_SHUTDOWN &&
  info != XLOG_CHECKPOINT_ONLINE)
 {
  switch (whichChkpt)
  {
   case 1:
    ereport(LOG,
      (errmsg("invalid xl_info in primary checkpoint record")));
    break;
   default:
    ereport(LOG,
      (errmsg("invalid xl_info in checkpoint record")));
    break;
  }
  return ((void*)0);
 }
 if (record->xl_tot_len != SizeOfXLogRecord + SizeOfXLogRecordDataHeaderShort + sizeof(CheckPoint))
 {
  switch (whichChkpt)
  {
   case 1:
    ereport(LOG,
      (errmsg("invalid length of primary checkpoint record")));
    break;
   default:
    ereport(LOG,
      (errmsg("invalid length of checkpoint record")));
    break;
  }
  return ((void*)0);
 }
 return record;
}
