
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ProtectionLockObj; } ;


 int OSI_RET_OK_CHECK (int ) ;
 int SL_OS_WAIT_FOREVER ;
 TYPE_1__* g_pCB ;
 int sl_LockObjLock (int *,int ) ;

void _SlDrvProtectionObjLockWaitForever()
{
    OSI_RET_OK_CHECK(sl_LockObjLock(&g_pCB->ProtectionLockObj, SL_OS_WAIT_FOREVER));

}
