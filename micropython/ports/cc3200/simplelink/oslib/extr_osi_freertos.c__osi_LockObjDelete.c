
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SemaphoreHandle_t ;
typedef int OsiReturnVal_e ;
typedef scalar_t__ OsiLockObj_t ;


 int OSI_OK ;
 int vSemaphoreDelete (int ) ;

OsiReturnVal_e _osi_LockObjDelete(OsiLockObj_t* pLockObj)
{
    vSemaphoreDelete((SemaphoreHandle_t)*pLockObj );
    return OSI_OK;
}
