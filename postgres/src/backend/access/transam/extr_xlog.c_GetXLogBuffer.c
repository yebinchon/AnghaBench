
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int uint32 ;
typedef scalar_t__ XLogRecPtr ;
typedef TYPE_1__* XLogPageHeader ;
struct TYPE_4__ {scalar_t__* xlblocks; char* pages; } ;
struct TYPE_3__ {scalar_t__ xlp_magic; scalar_t__ xlp_pageaddr; } ;
typedef int Size ;


 int AdvanceXLInsertBuffer (scalar_t__,int) ;
 int Assert (int) ;
 int PANIC ;
 scalar_t__ SizeOfXLogLongPHD ;
 scalar_t__ SizeOfXLogShortPHD ;
 int WALInsertLockUpdateInsertingAt (scalar_t__) ;
 scalar_t__ XLOG_BLCKSZ ;
 scalar_t__ XLOG_PAGE_MAGIC ;
 TYPE_2__* XLogCtl ;
 int XLogRecPtrToBufIdx (scalar_t__) ;
 scalar_t__ XLogSegmentOffset (scalar_t__,int ) ;
 int elog (int ,char*,int ,int ) ;
 int pg_memory_barrier () ;
 int wal_segment_size ;

__attribute__((used)) static char *
GetXLogBuffer(XLogRecPtr ptr)
{
 int idx;
 XLogRecPtr endptr;
 static uint64 cachedPage = 0;
 static char *cachedPos = ((void*)0);
 XLogRecPtr expectedEndPtr;





 if (ptr / XLOG_BLCKSZ == cachedPage)
 {
  Assert(((XLogPageHeader) cachedPos)->xlp_magic == XLOG_PAGE_MAGIC);
  Assert(((XLogPageHeader) cachedPos)->xlp_pageaddr == ptr - (ptr % XLOG_BLCKSZ));
  return cachedPos + ptr % XLOG_BLCKSZ;
 }






 idx = XLogRecPtrToBufIdx(ptr);
 expectedEndPtr = ptr;
 expectedEndPtr += XLOG_BLCKSZ - ptr % XLOG_BLCKSZ;

 endptr = XLogCtl->xlblocks[idx];
 if (expectedEndPtr != endptr)
 {
  XLogRecPtr initializedUpto;
  if (ptr % XLOG_BLCKSZ == SizeOfXLogShortPHD &&
   XLogSegmentOffset(ptr, wal_segment_size) > XLOG_BLCKSZ)
   initializedUpto = ptr - SizeOfXLogShortPHD;
  else if (ptr % XLOG_BLCKSZ == SizeOfXLogLongPHD &&
     XLogSegmentOffset(ptr, wal_segment_size) < XLOG_BLCKSZ)
   initializedUpto = ptr - SizeOfXLogLongPHD;
  else
   initializedUpto = ptr;

  WALInsertLockUpdateInsertingAt(initializedUpto);

  AdvanceXLInsertBuffer(ptr, 0);
  endptr = XLogCtl->xlblocks[idx];

  if (expectedEndPtr != endptr)
   elog(PANIC, "could not find WAL buffer for %X/%X",
     (uint32) (ptr >> 32), (uint32) ptr);
 }
 else
 {




  pg_memory_barrier();
 }





 cachedPage = ptr / XLOG_BLCKSZ;
 cachedPos = XLogCtl->pages + idx * (Size) XLOG_BLCKSZ;

 Assert(((XLogPageHeader) cachedPos)->xlp_magic == XLOG_PAGE_MAGIC);
 Assert(((XLogPageHeader) cachedPos)->xlp_pageaddr == ptr - (ptr % XLOG_BLCKSZ));

 return cachedPos + ptr % XLOG_BLCKSZ;
}
