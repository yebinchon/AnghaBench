
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ uint32 ;
typedef int XLogRecPtr ;
struct TYPE_3__ {scalar_t__ CurrBytePos; scalar_t__ PrevBytePos; int insertpos_lck; } ;
typedef TYPE_1__ XLogCtlInsert ;
struct TYPE_4__ {TYPE_1__ Insert; } ;


 int Assert (int) ;
 scalar_t__ MAXALIGN (int ) ;
 int SizeOfXLogRecord ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int XLogBytePosToEndRecPtr (scalar_t__) ;
 int XLogBytePosToRecPtr (scalar_t__) ;
 TYPE_2__* XLogCtl ;
 scalar_t__ XLogRecPtrToBytePos (int ) ;
 scalar_t__ XLogSegmentOffset (int ,scalar_t__) ;
 scalar_t__ wal_segment_size ;

__attribute__((used)) static bool
ReserveXLogSwitch(XLogRecPtr *StartPos, XLogRecPtr *EndPos, XLogRecPtr *PrevPtr)
{
 XLogCtlInsert *Insert = &XLogCtl->Insert;
 uint64 startbytepos;
 uint64 endbytepos;
 uint64 prevbytepos;
 uint32 size = MAXALIGN(SizeOfXLogRecord);
 XLogRecPtr ptr;
 uint32 segleft;







 SpinLockAcquire(&Insert->insertpos_lck);

 startbytepos = Insert->CurrBytePos;

 ptr = XLogBytePosToEndRecPtr(startbytepos);
 if (XLogSegmentOffset(ptr, wal_segment_size) == 0)
 {
  SpinLockRelease(&Insert->insertpos_lck);
  *EndPos = *StartPos = ptr;
  return 0;
 }

 endbytepos = startbytepos + size;
 prevbytepos = Insert->PrevBytePos;

 *StartPos = XLogBytePosToRecPtr(startbytepos);
 *EndPos = XLogBytePosToEndRecPtr(endbytepos);

 segleft = wal_segment_size - XLogSegmentOffset(*EndPos, wal_segment_size);
 if (segleft != wal_segment_size)
 {

  *EndPos += segleft;
  endbytepos = XLogRecPtrToBytePos(*EndPos);
 }
 Insert->CurrBytePos = endbytepos;
 Insert->PrevBytePos = startbytepos;

 SpinLockRelease(&Insert->insertpos_lck);

 *PrevPtr = XLogBytePosToRecPtr(prevbytepos);

 Assert(XLogSegmentOffset(*EndPos, wal_segment_size) == 0);
 Assert(XLogRecPtrToBytePos(*EndPos) == endbytepos);
 Assert(XLogRecPtrToBytePos(*StartPos) == startbytepos);
 Assert(XLogRecPtrToBytePos(*PrevPtr) == prevbytepos);

 return 1;
}
