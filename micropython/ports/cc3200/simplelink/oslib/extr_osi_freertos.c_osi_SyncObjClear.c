
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiSyncObj_t ;
typedef scalar_t__ OsiReturnVal_e ;


 scalar_t__ OSI_OK ;
 scalar_t__ OSI_OPERATION_FAILED ;
 scalar_t__ osi_SyncObjWait (int *,int ) ;

OsiReturnVal_e osi_SyncObjClear(OsiSyncObj_t* pSyncObj)
{
    if (OSI_OK == osi_SyncObjWait(pSyncObj,0) )
    {
        return OSI_OK;
    }
    else
    {
        return OSI_OPERATION_FAILED;
    }
}
