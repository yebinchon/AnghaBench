
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_3__ {int Write; } ;
struct TYPE_4__ {int info_lck; TYPE_1__ LogwrtRqst; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* XLogCtl ;

XLogRecPtr
GetInsertRecPtr(void)
{
 XLogRecPtr recptr;

 SpinLockAcquire(&XLogCtl->info_lck);
 recptr = XLogCtl->LogwrtRqst.Write;
 SpinLockRelease(&XLogCtl->info_lck);

 return recptr;
}
