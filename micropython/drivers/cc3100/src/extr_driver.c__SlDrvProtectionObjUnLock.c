
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ProtectionLockObj; } ;


 int OSI_RET_OK_CHECK (int ) ;
 TYPE_1__* g_pCB ;
 int sl_LockObjUnlock (int *) ;

void _SlDrvProtectionObjUnLock()
{
    OSI_RET_OK_CHECK(sl_LockObjUnlock(&g_pCB->ProtectionLockObj));
}
