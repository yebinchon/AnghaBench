
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiSyncObj_t ;
typedef int OsiReturnVal_e ;


 int OSI_OK ;
 int xSemaphoreGive (int ) ;

OsiReturnVal_e osi_SyncObjSignal(OsiSyncObj_t* pSyncObj)
{
    xSemaphoreGive( *pSyncObj );
    return OSI_OK;
}
