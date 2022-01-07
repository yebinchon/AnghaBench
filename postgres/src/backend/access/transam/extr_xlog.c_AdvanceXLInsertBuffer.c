
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {scalar_t__ Flush; scalar_t__ Write; } ;
typedef TYPE_2__ XLogwrtRqst ;
typedef scalar_t__ XLogRecPtr ;
typedef TYPE_3__* XLogPageHeader ;
typedef TYPE_4__* XLogLongPageHeader ;
struct TYPE_14__ {int forcePageWrites; } ;
typedef TYPE_5__ XLogCtlInsert ;
struct TYPE_17__ {int system_identifier; } ;
struct TYPE_16__ {scalar_t__ Write; } ;
struct TYPE_10__ {scalar_t__ Write; } ;
struct TYPE_15__ {scalar_t__ InitializedUpTo; scalar_t__* xlblocks; scalar_t__ pages; TYPE_8__ LogwrtResult; int info_lck; TYPE_1__ LogwrtRqst; TYPE_5__ Insert; } ;
struct TYPE_13__ {scalar_t__ xlp_xlog_blcksz; int xlp_seg_size; int xlp_sysid; } ;
struct TYPE_12__ {int xlp_info; scalar_t__ xlp_pageaddr; int xlp_tli; int xlp_magic; } ;
typedef int Size ;


 int Assert (int) ;
 TYPE_9__* ControlFile ;
 int DEBUG1 ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_8__ LogwrtResult ;
 int MemSet (char*,int ,scalar_t__) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_DONE () ;
 int TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_START () ;
 int ThisTimeLineID ;
 int WALBufMappingLock ;
 int WALWriteLock ;
 int WaitXLogInsertionsToFinish (scalar_t__) ;
 scalar_t__ XLOG_BLCKSZ ;
 scalar_t__ XLOG_DEBUG ;
 int XLOG_PAGE_MAGIC ;
 int XLP_BKP_REMOVABLE ;
 int XLP_LONG_HEADER ;
 TYPE_7__* XLogCtl ;
 int XLogRecPtrToBufIdx (scalar_t__) ;
 scalar_t__ XLogSegmentOffset (scalar_t__,int ) ;
 int XLogWrite (TYPE_2__,int) ;
 int elog (int ,char*,int,int ,int ) ;
 int pg_write_barrier () ;
 int wal_segment_size ;

__attribute__((used)) static void
AdvanceXLInsertBuffer(XLogRecPtr upto, bool opportunistic)
{
 XLogCtlInsert *Insert = &XLogCtl->Insert;
 int nextidx;
 XLogRecPtr OldPageRqstPtr;
 XLogwrtRqst WriteRqst;
 XLogRecPtr NewPageEndPtr = InvalidXLogRecPtr;
 XLogRecPtr NewPageBeginPtr;
 XLogPageHeader NewPage;
 int npages = 0;

 LWLockAcquire(WALBufMappingLock, LW_EXCLUSIVE);





 while (upto >= XLogCtl->InitializedUpTo || opportunistic)
 {
  nextidx = XLogRecPtrToBufIdx(XLogCtl->InitializedUpTo);






  OldPageRqstPtr = XLogCtl->xlblocks[nextidx];
  if (LogwrtResult.Write < OldPageRqstPtr)
  {




   if (opportunistic)
    break;


   SpinLockAcquire(&XLogCtl->info_lck);
   if (XLogCtl->LogwrtRqst.Write < OldPageRqstPtr)
    XLogCtl->LogwrtRqst.Write = OldPageRqstPtr;
   LogwrtResult = XLogCtl->LogwrtResult;
   SpinLockRelease(&XLogCtl->info_lck);





   if (LogwrtResult.Write < OldPageRqstPtr)
   {






    LWLockRelease(WALBufMappingLock);

    WaitXLogInsertionsToFinish(OldPageRqstPtr);

    LWLockAcquire(WALWriteLock, LW_EXCLUSIVE);

    LogwrtResult = XLogCtl->LogwrtResult;
    if (LogwrtResult.Write >= OldPageRqstPtr)
    {

     LWLockRelease(WALWriteLock);
    }
    else
    {

     TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_START();
     WriteRqst.Write = OldPageRqstPtr;
     WriteRqst.Flush = 0;
     XLogWrite(WriteRqst, 0);
     LWLockRelease(WALWriteLock);
     TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_DONE();
    }

    LWLockAcquire(WALBufMappingLock, LW_EXCLUSIVE);
    continue;
   }
  }





  NewPageBeginPtr = XLogCtl->InitializedUpTo;
  NewPageEndPtr = NewPageBeginPtr + XLOG_BLCKSZ;

  Assert(XLogRecPtrToBufIdx(NewPageBeginPtr) == nextidx);

  NewPage = (XLogPageHeader) (XLogCtl->pages + nextidx * (Size) XLOG_BLCKSZ);





  MemSet((char *) NewPage, 0, XLOG_BLCKSZ);




  NewPage->xlp_magic = XLOG_PAGE_MAGIC;


  NewPage->xlp_tli = ThisTimeLineID;
  NewPage->xlp_pageaddr = NewPageBeginPtr;
  if (!Insert->forcePageWrites)
   NewPage->xlp_info |= XLP_BKP_REMOVABLE;




  if ((XLogSegmentOffset(NewPage->xlp_pageaddr, wal_segment_size)) == 0)
  {
   XLogLongPageHeader NewLongPage = (XLogLongPageHeader) NewPage;

   NewLongPage->xlp_sysid = ControlFile->system_identifier;
   NewLongPage->xlp_seg_size = wal_segment_size;
   NewLongPage->xlp_xlog_blcksz = XLOG_BLCKSZ;
   NewPage->xlp_info |= XLP_LONG_HEADER;
  }






  pg_write_barrier();

  *((volatile XLogRecPtr *) &XLogCtl->xlblocks[nextidx]) = NewPageEndPtr;

  XLogCtl->InitializedUpTo = NewPageEndPtr;

  npages++;
 }
 LWLockRelease(WALBufMappingLock);
}
