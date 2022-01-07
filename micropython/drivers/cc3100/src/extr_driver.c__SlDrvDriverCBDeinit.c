
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t _u8 ;
struct TYPE_5__ {int TxSyncObj; int TxLockObj; scalar_t__ TxPoolCnt; } ;
struct TYPE_7__ {size_t PendingPoolIdx; size_t ActivePoolIdx; scalar_t__ FreePoolIdx; TYPE_2__* ObjPool; int ProtectionLockObj; int GlobalLockObj; int CmdSyncObj; TYPE_1__ FlowContCB; } ;
struct TYPE_6__ {int SyncObj; } ;


 size_t MAX_CONCURRENT_ACTIONS ;
 int OSI_RET_OK_CHECK (int ) ;
 TYPE_3__* g_pCB ;
 int sl_Free (TYPE_3__*) ;
 int sl_LockObjDelete (int *) ;
 int sl_SyncObjDelete (int *) ;

void _SlDrvDriverCBDeinit()
{
    _u8 Idx =0;


    g_pCB->FlowContCB.TxPoolCnt = 0;
    OSI_RET_OK_CHECK(sl_LockObjDelete(&g_pCB->FlowContCB.TxLockObj));
    OSI_RET_OK_CHECK(sl_SyncObjDelete(&g_pCB->FlowContCB.TxSyncObj));

    OSI_RET_OK_CHECK( sl_SyncObjDelete(&g_pCB->CmdSyncObj) );
    OSI_RET_OK_CHECK( sl_LockObjDelete(&g_pCB->GlobalLockObj) );
    OSI_RET_OK_CHECK( sl_LockObjDelete(&g_pCB->ProtectionLockObj) );


    for (Idx = 0; Idx < MAX_CONCURRENT_ACTIONS; Idx++)

    {
 OSI_RET_OK_CHECK( sl_SyncObjDelete(&g_pCB->ObjPool[Idx].SyncObj) );
    }

    g_pCB->FreePoolIdx = 0;
    g_pCB->PendingPoolIdx = MAX_CONCURRENT_ACTIONS;
    g_pCB->ActivePoolIdx = MAX_CONCURRENT_ACTIONS;


    sl_Free(g_pCB);





    g_pCB = ((void*)0);
}
