
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _SlLockObj_t ;


 int OSI_RET_OK_CHECK (int ) ;
 int sl_LockObjUnlock (int *) ;

void _SlDrvObjUnLock(_SlLockObj_t *pLockObj)
{
    OSI_RET_OK_CHECK(sl_LockObjUnlock(pLockObj));

}
