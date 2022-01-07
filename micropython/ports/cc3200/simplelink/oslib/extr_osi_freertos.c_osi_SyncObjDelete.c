
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiSyncObj_t ;
typedef int OsiReturnVal_e ;


 int OSI_OK ;
 int vSemaphoreDelete (int ) ;

OsiReturnVal_e osi_SyncObjDelete(OsiSyncObj_t* pSyncObj)
{
    vSemaphoreDelete(*pSyncObj );
    return OSI_OK;
}
