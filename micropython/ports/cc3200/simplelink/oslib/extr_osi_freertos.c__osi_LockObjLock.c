
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TickType_t ;
typedef scalar_t__ OsiTime_t ;
typedef int OsiReturnVal_e ;
typedef int OsiLockObj_t ;


 int OSI_OK ;
 int OSI_OPERATION_FAILED ;
 scalar_t__ pdTRUE ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

OsiReturnVal_e _osi_LockObjLock(OsiLockObj_t* pLockObj , OsiTime_t Timeout)
{

    if(pdTRUE == xSemaphoreTake( *pLockObj, ( TickType_t ) Timeout ))
    {
        return OSI_OK;
    }
    else
    {
        return OSI_OPERATION_FAILED;
    }
}
