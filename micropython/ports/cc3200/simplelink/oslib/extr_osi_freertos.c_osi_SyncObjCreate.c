
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SemaphoreHandle_t ;
typedef int * OsiSyncObj_t ;
typedef int OsiReturnVal_e ;


 int ASSERT (int ) ;
 int OSI_OK ;
 int xSemaphoreCreateBinary () ;

OsiReturnVal_e osi_SyncObjCreate(OsiSyncObj_t* pSyncObj)
{
    SemaphoreHandle_t *pl_SyncObj = (SemaphoreHandle_t *)pSyncObj;

    *pl_SyncObj = xSemaphoreCreateBinary();

    ASSERT (*pSyncObj != ((void*)0));

    return OSI_OK;
}
