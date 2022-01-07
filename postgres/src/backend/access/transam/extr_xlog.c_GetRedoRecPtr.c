
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_2__ {scalar_t__ RedoRecPtr; int info_lck; } ;


 scalar_t__ RedoRecPtr ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

XLogRecPtr
GetRedoRecPtr(void)
{
 XLogRecPtr ptr;






 SpinLockAcquire(&XLogCtl->info_lck);
 ptr = XLogCtl->RedoRecPtr;
 SpinLockRelease(&XLogCtl->info_lck);

 if (RedoRecPtr < ptr)
  RedoRecPtr = ptr;

 return RedoRecPtr;
}
