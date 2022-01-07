
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_4__ {char* data; int len; struct TYPE_4__* next; } ;
typedef TYPE_1__ XLogRecData ;
typedef TYPE_2__* XLogPageHeader ;
struct TYPE_5__ {int xlp_rem_len; int xlp_info; } ;


 int Assert (int) ;
 char* GetXLogBuffer (int) ;
 int INSERT_FREESPACE (int) ;
 int MAXALIGN64 (int) ;
 int MemSet (char*,int ,int) ;
 int PANIC ;
 scalar_t__ SizeOfXLogLongPHD ;
 int SizeOfXLogRecord ;
 int SizeOfXLogShortPHD ;
 int XLOG_BLCKSZ ;
 int XLP_FIRST_IS_CONTRECORD ;
 scalar_t__ XLogSegmentOffset (int,int ) ;
 int elog (int ,char*) ;
 int memcpy (char*,char*,int) ;
 int wal_segment_size ;

__attribute__((used)) static void
CopyXLogRecordToWAL(int write_len, bool isLogSwitch, XLogRecData *rdata,
     XLogRecPtr StartPos, XLogRecPtr EndPos)
{
 char *currpos;
 int freespace;
 int written;
 XLogRecPtr CurrPos;
 XLogPageHeader pagehdr;





 CurrPos = StartPos;
 currpos = GetXLogBuffer(CurrPos);
 freespace = INSERT_FREESPACE(CurrPos);





 Assert(freespace >= sizeof(uint32));


 written = 0;
 while (rdata != ((void*)0))
 {
  char *rdata_data = rdata->data;
  int rdata_len = rdata->len;

  while (rdata_len > freespace)
  {



   Assert(CurrPos % XLOG_BLCKSZ >= SizeOfXLogShortPHD || freespace == 0);
   memcpy(currpos, rdata_data, freespace);
   rdata_data += freespace;
   rdata_len -= freespace;
   written += freespace;
   CurrPos += freespace;
   currpos = GetXLogBuffer(CurrPos);
   pagehdr = (XLogPageHeader) currpos;
   pagehdr->xlp_rem_len = write_len - written;
   pagehdr->xlp_info |= XLP_FIRST_IS_CONTRECORD;


   if (XLogSegmentOffset(CurrPos, wal_segment_size) == 0)
   {
    CurrPos += SizeOfXLogLongPHD;
    currpos += SizeOfXLogLongPHD;
   }
   else
   {
    CurrPos += SizeOfXLogShortPHD;
    currpos += SizeOfXLogShortPHD;
   }
   freespace = INSERT_FREESPACE(CurrPos);
  }

  Assert(CurrPos % XLOG_BLCKSZ >= SizeOfXLogShortPHD || rdata_len == 0);
  memcpy(currpos, rdata_data, rdata_len);
  currpos += rdata_len;
  CurrPos += rdata_len;
  freespace -= rdata_len;
  written += rdata_len;

  rdata = rdata->next;
 }
 Assert(written == write_len);






 if (isLogSwitch && XLogSegmentOffset(CurrPos, wal_segment_size) != 0)
 {

  Assert(write_len == SizeOfXLogRecord);


  Assert(XLogSegmentOffset(EndPos, wal_segment_size) == 0);


  CurrPos += freespace;







  while (CurrPos < EndPos)
  {
   currpos = GetXLogBuffer(CurrPos);
   MemSet(currpos, 0, SizeOfXLogShortPHD);

   CurrPos += XLOG_BLCKSZ;
  }
 }
 else
 {

  CurrPos = MAXALIGN64(CurrPos);
 }

 if (CurrPos != EndPos)
  elog(PANIC, "space reserved for WAL record does not match what was written");
}
