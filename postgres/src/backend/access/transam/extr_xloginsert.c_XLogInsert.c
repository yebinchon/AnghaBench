
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ XLogRecPtr ;
typedef int XLogRecData ;
typedef scalar_t__ RmgrId ;


 int ERROR ;
 int GetFullPageWriteInfo (scalar_t__*,int*) ;
 scalar_t__ InvalidXLogRecPtr ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int PANIC ;
 scalar_t__ RM_XLOG_ID ;
 scalar_t__ SizeOfXLogLongPHD ;
 int TRACE_POSTGRESQL_WAL_INSERT (scalar_t__,int) ;
 int XLR_CHECK_CONSISTENCY ;
 int XLR_RMGR_INFO_MASK ;
 int XLR_SPECIAL_REL_UPDATE ;
 scalar_t__ XLogInsertRecord (int *,scalar_t__,int ) ;
 int * XLogRecordAssemble (scalar_t__,int,scalar_t__,int,scalar_t__*) ;
 int XLogResetInsertion () ;
 int begininsert_called ;
 int curinsert_flags ;
 int elog (int ,char*,...) ;

XLogRecPtr
XLogInsert(RmgrId rmid, uint8 info)
{
 XLogRecPtr EndPos;


 if (!begininsert_called)
  elog(ERROR, "XLogBeginInsert was not called");





 if ((info & ~(XLR_RMGR_INFO_MASK |
      XLR_SPECIAL_REL_UPDATE |
      XLR_CHECK_CONSISTENCY)) != 0)
  elog(PANIC, "invalid xlog info mask %02X", info);

 TRACE_POSTGRESQL_WAL_INSERT(rmid, info);





 if (IsBootstrapProcessingMode() && rmid != RM_XLOG_ID)
 {
  XLogResetInsertion();
  EndPos = SizeOfXLogLongPHD;
  return EndPos;
 }

 do
 {
  XLogRecPtr RedoRecPtr;
  bool doPageWrites;
  XLogRecPtr fpw_lsn;
  XLogRecData *rdt;






  GetFullPageWriteInfo(&RedoRecPtr, &doPageWrites);

  rdt = XLogRecordAssemble(rmid, info, RedoRecPtr, doPageWrites,
         &fpw_lsn);

  EndPos = XLogInsertRecord(rdt, fpw_lsn, curinsert_flags);
 } while (EndPos == InvalidXLogRecPtr);

 XLogResetInsertion();

 return EndPos;
}
