
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SemaphoreHandle_t ;
typedef int OsiReturnVal_e ;
typedef int * OsiLockObj_t ;


 int ASSERT (int ) ;
 int OSI_OK ;
 int vSemaphoreCreateBinary (int ) ;

OsiReturnVal_e osi_LockObjCreate(OsiLockObj_t* pLockObj)
{
    SemaphoreHandle_t *pl_LockObj = (SemaphoreHandle_t *)pLockObj;

    vSemaphoreCreateBinary(*pl_LockObj);

    ASSERT (*pLockObj != ((void*)0));

    return OSI_OK;
}
