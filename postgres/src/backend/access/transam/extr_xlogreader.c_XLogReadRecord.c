
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_20__ {int xl_tot_len; scalar_t__ xl_rmid; int xl_info; } ;
typedef TYPE_2__ XLogRecord ;
typedef int XLogRecPtr ;
struct TYPE_19__ {int ws_segsize; } ;
struct TYPE_21__ {char* errormsg_buf; int EndRecPtr; int ReadRecPtr; int currRecPtr; char* readBuf; int readRecordBufSize; char* readRecordBuf; TYPE_1__ segcxt; } ;
typedef TYPE_3__ XLogReaderState ;
typedef TYPE_4__* XLogPageHeader ;
struct TYPE_22__ {int xlp_info; int xlp_rem_len; } ;


 int Assert (int) ;
 scalar_t__ DecodeXLogRecord (TYPE_3__*,TYPE_2__*,char**) ;
 int InvalidXLogRecPtr ;
 int MAXALIGN (int) ;
 int Min (int,int) ;
 scalar_t__ RM_XLOG_ID ;
 int ReadPageInternal (TYPE_3__*,int,int) ;
 int ResetDecoder (TYPE_3__*) ;
 int SizeOfXLogRecord ;
 int SizeOfXLogShortPHD ;
 int ValidXLogRecord (TYPE_3__*,TYPE_2__*,int) ;
 int ValidXLogRecordHeader (TYPE_3__*,int,int,TYPE_2__*,int) ;
 int XLOG_BLCKSZ ;
 int XLOG_SWITCH ;
 int XLP_FIRST_IS_CONTRECORD ;
 int XLR_INFO_MASK ;
 int XLogPageHeaderSize (TYPE_4__*) ;
 int XLogReaderInvalReadState (TYPE_3__*) ;
 int XLogSegmentOffset (int,int) ;
 int XRecOffIsValid (int) ;
 int allocate_recordbuf (TYPE_3__*,int) ;
 int memcpy (char*,char*,int) ;
 int report_invalid_record (TYPE_3__*,char*,int,int,...) ;

XLogRecord *
XLogReadRecord(XLogReaderState *state, XLogRecPtr RecPtr, char **errormsg)
{
 XLogRecord *record;
 XLogRecPtr targetPagePtr;
 bool randAccess;
 uint32 len,
    total_len;
 uint32 targetRecOff;
 uint32 pageHeaderSize;
 bool gotheader;
 int readOff;






 randAccess = 0;


 *errormsg = ((void*)0);
 state->errormsg_buf[0] = '\0';

 ResetDecoder(state);

 if (RecPtr == InvalidXLogRecPtr)
 {

  RecPtr = state->EndRecPtr;

  if (state->ReadRecPtr == InvalidXLogRecPtr)
   randAccess = 1;







 }
 else
 {






  Assert(XRecOffIsValid(RecPtr));
  randAccess = 1;
 }

 state->currRecPtr = RecPtr;

 targetPagePtr = RecPtr - (RecPtr % XLOG_BLCKSZ);
 targetRecOff = RecPtr % XLOG_BLCKSZ;






 readOff = ReadPageInternal(state,
          targetPagePtr,
          Min(targetRecOff + SizeOfXLogRecord, XLOG_BLCKSZ));
 if (readOff < 0)
  goto err;





 pageHeaderSize = XLogPageHeaderSize((XLogPageHeader) state->readBuf);
 if (targetRecOff == 0)
 {



  RecPtr += pageHeaderSize;
  targetRecOff = pageHeaderSize;
 }
 else if (targetRecOff < pageHeaderSize)
 {
  report_invalid_record(state, "invalid record offset at %X/%X",
         (uint32) (RecPtr >> 32), (uint32) RecPtr);
  goto err;
 }

 if ((((XLogPageHeader) state->readBuf)->xlp_info & XLP_FIRST_IS_CONTRECORD) &&
  targetRecOff == pageHeaderSize)
 {
  report_invalid_record(state, "contrecord is requested by %X/%X",
         (uint32) (RecPtr >> 32), (uint32) RecPtr);
  goto err;
 }


 Assert(pageHeaderSize <= readOff);
 record = (XLogRecord *) (state->readBuf + RecPtr % XLOG_BLCKSZ);
 total_len = record->xl_tot_len;
 if (targetRecOff <= XLOG_BLCKSZ - SizeOfXLogRecord)
 {
  if (!ValidXLogRecordHeader(state, RecPtr, state->ReadRecPtr, record,
           randAccess))
   goto err;
  gotheader = 1;
 }
 else
 {

  if (total_len < SizeOfXLogRecord)
  {
   report_invalid_record(state,
          "invalid record length at %X/%X: wanted %u, got %u",
          (uint32) (RecPtr >> 32), (uint32) RecPtr,
          (uint32) SizeOfXLogRecord, total_len);
   goto err;
  }
  gotheader = 0;
 }

 len = XLOG_BLCKSZ - RecPtr % XLOG_BLCKSZ;
 if (total_len > len)
 {

  char *contdata;
  XLogPageHeader pageHeader;
  char *buffer;
  uint32 gotlen;




  if (total_len > state->readRecordBufSize &&
   !allocate_recordbuf(state, total_len))
  {

   report_invalid_record(state, "record length %u at %X/%X too long",
          total_len,
          (uint32) (RecPtr >> 32), (uint32) RecPtr);
   goto err;
  }


  memcpy(state->readRecordBuf,
      state->readBuf + RecPtr % XLOG_BLCKSZ, len);
  buffer = state->readRecordBuf + len;
  gotlen = len;

  do
  {

   targetPagePtr += XLOG_BLCKSZ;


   readOff = ReadPageInternal(state, targetPagePtr,
            Min(total_len - gotlen + SizeOfXLogShortPHD,
             XLOG_BLCKSZ));

   if (readOff < 0)
    goto err;

   Assert(SizeOfXLogShortPHD <= readOff);


   pageHeader = (XLogPageHeader) state->readBuf;
   if (!(pageHeader->xlp_info & XLP_FIRST_IS_CONTRECORD))
   {
    report_invalid_record(state,
           "there is no contrecord flag at %X/%X",
           (uint32) (RecPtr >> 32), (uint32) RecPtr);
    goto err;
   }





   if (pageHeader->xlp_rem_len == 0 ||
    total_len != (pageHeader->xlp_rem_len + gotlen))
   {
    report_invalid_record(state,
           "invalid contrecord length %u at %X/%X",
           pageHeader->xlp_rem_len,
           (uint32) (RecPtr >> 32), (uint32) RecPtr);
    goto err;
   }


   pageHeaderSize = XLogPageHeaderSize(pageHeader);

   if (readOff < pageHeaderSize)
    readOff = ReadPageInternal(state, targetPagePtr,
             pageHeaderSize);

   Assert(pageHeaderSize <= readOff);

   contdata = (char *) state->readBuf + pageHeaderSize;
   len = XLOG_BLCKSZ - pageHeaderSize;
   if (pageHeader->xlp_rem_len < len)
    len = pageHeader->xlp_rem_len;

   if (readOff < pageHeaderSize + len)
    readOff = ReadPageInternal(state, targetPagePtr,
             pageHeaderSize + len);

   memcpy(buffer, (char *) contdata, len);
   buffer += len;
   gotlen += len;


   if (!gotheader)
   {
    record = (XLogRecord *) state->readRecordBuf;
    if (!ValidXLogRecordHeader(state, RecPtr, state->ReadRecPtr,
             record, randAccess))
     goto err;
    gotheader = 1;
   }
  } while (gotlen < total_len);

  Assert(gotheader);

  record = (XLogRecord *) state->readRecordBuf;
  if (!ValidXLogRecord(state, record, RecPtr))
   goto err;

  pageHeaderSize = XLogPageHeaderSize((XLogPageHeader) state->readBuf);
  state->ReadRecPtr = RecPtr;
  state->EndRecPtr = targetPagePtr + pageHeaderSize
   + MAXALIGN(pageHeader->xlp_rem_len);
 }
 else
 {

  readOff = ReadPageInternal(state, targetPagePtr,
           Min(targetRecOff + total_len, XLOG_BLCKSZ));
  if (readOff < 0)
   goto err;


  if (!ValidXLogRecord(state, record, RecPtr))
   goto err;

  state->EndRecPtr = RecPtr + MAXALIGN(total_len);

  state->ReadRecPtr = RecPtr;
 }




 if (record->xl_rmid == RM_XLOG_ID &&
  (record->xl_info & ~XLR_INFO_MASK) == XLOG_SWITCH)
 {

  state->EndRecPtr += state->segcxt.ws_segsize - 1;
  state->EndRecPtr -= XLogSegmentOffset(state->EndRecPtr, state->segcxt.ws_segsize);
 }

 if (DecodeXLogRecord(state, record, errormsg))
  return record;
 else
  return ((void*)0);

err:





 XLogReaderInvalReadState(state);

 if (state->errormsg_buf[0] != '\0')
  *errormsg = state->errormsg_buf;

 return ((void*)0);
}
