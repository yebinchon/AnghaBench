
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int XLogRecPtr ;
struct TYPE_3__ {int insertpos_lck; int CurrBytePos; } ;
typedef TYPE_1__ XLogCtlInsert ;
struct TYPE_4__ {TYPE_1__ Insert; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int XLogBytePosToRecPtr (int ) ;
 TYPE_2__* XLogCtl ;

XLogRecPtr
GetXLogInsertRecPtr(void)
{
 XLogCtlInsert *Insert = &XLogCtl->Insert;
 uint64 current_bytepos;

 SpinLockAcquire(&Insert->insertpos_lck);
 current_bytepos = Insert->CurrBytePos;
 SpinLockRelease(&Insert->insertpos_lck);

 return XLogBytePosToRecPtr(current_bytepos);
}
