
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int XLogRecPtr ;
struct TYPE_3__ {scalar_t__ CurrBytePos; scalar_t__ PrevBytePos; int insertpos_lck; } ;
typedef TYPE_1__ XLogCtlInsert ;
struct TYPE_4__ {TYPE_1__ Insert; } ;


 int Assert (int) ;
 int MAXALIGN (int) ;
 int SizeOfXLogRecord ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int XLogBytePosToEndRecPtr (scalar_t__) ;
 int XLogBytePosToRecPtr (scalar_t__) ;
 TYPE_2__* XLogCtl ;
 scalar_t__ XLogRecPtrToBytePos (int ) ;

__attribute__((used)) static void
ReserveXLogInsertLocation(int size, XLogRecPtr *StartPos, XLogRecPtr *EndPos,
        XLogRecPtr *PrevPtr)
{
 XLogCtlInsert *Insert = &XLogCtl->Insert;
 uint64 startbytepos;
 uint64 endbytepos;
 uint64 prevbytepos;

 size = MAXALIGN(size);


 Assert(size > SizeOfXLogRecord);
 SpinLockAcquire(&Insert->insertpos_lck);

 startbytepos = Insert->CurrBytePos;
 endbytepos = startbytepos + size;
 prevbytepos = Insert->PrevBytePos;
 Insert->CurrBytePos = endbytepos;
 Insert->PrevBytePos = startbytepos;

 SpinLockRelease(&Insert->insertpos_lck);

 *StartPos = XLogBytePosToRecPtr(startbytepos);
 *EndPos = XLogBytePosToEndRecPtr(endbytepos);
 *PrevPtr = XLogBytePosToRecPtr(prevbytepos);





 Assert(XLogRecPtrToBytePos(*StartPos) == startbytepos);
 Assert(XLogRecPtrToBytePos(*EndPos) == endbytepos);
 Assert(XLogRecPtrToBytePos(*PrevPtr) == prevbytepos);
}
