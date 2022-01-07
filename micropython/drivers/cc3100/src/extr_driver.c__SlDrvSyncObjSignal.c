
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _SlSyncObj_t ;


 int OSI_RET_OK_CHECK (int ) ;
 int sl_SyncObjSignal (int *) ;

void _SlDrvSyncObjSignal(_SlSyncObj_t *pSyncObj)
{
    OSI_RET_OK_CHECK(sl_SyncObjSignal(pSyncObj));
}
