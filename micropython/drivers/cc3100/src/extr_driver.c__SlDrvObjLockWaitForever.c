
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _SlLockObj_t ;


 int OSI_RET_OK_CHECK (int ) ;
 int SL_OS_WAIT_FOREVER ;
 int sl_LockObjLock (int *,int ) ;

void _SlDrvObjLockWaitForever(_SlLockObj_t *pLockObj)
{
    OSI_RET_OK_CHECK(sl_LockObjLock(pLockObj, SL_OS_WAIT_FOREVER));
}
