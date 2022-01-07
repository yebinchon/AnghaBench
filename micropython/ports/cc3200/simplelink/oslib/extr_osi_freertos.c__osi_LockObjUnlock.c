
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiReturnVal_e ;
typedef int OsiLockObj_t ;


 int OSI_OK ;
 int OSI_OPERATION_FAILED ;
 scalar_t__ pdTRUE ;
 scalar_t__ xSemaphoreGive (int ) ;

OsiReturnVal_e _osi_LockObjUnlock(OsiLockObj_t* pLockObj)
{

    if(pdTRUE == xSemaphoreGive( *pLockObj ))
    {
     return OSI_OK;
    }
    else
    {
     return OSI_OPERATION_FAILED;
    }
}
