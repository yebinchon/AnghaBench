
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_2__ {int ulsn_lck; int unloggedLSN; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* XLogCtl ;

XLogRecPtr
GetFakeLSNForUnloggedRel(void)
{
 XLogRecPtr nextUnloggedLSN;


 SpinLockAcquire(&XLogCtl->ulsn_lck);
 nextUnloggedLSN = XLogCtl->unloggedLSN++;
 SpinLockRelease(&XLogCtl->ulsn_lck);

 return nextUnloggedLSN;
}
