
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int _u8 ;
typedef int _SlPoolObj_t ;
typedef int _SlDriverCb_t ;
struct TYPE_7__ {int TxSyncObj; int TxLockObj; int TxPoolCnt; } ;
struct TYPE_8__ {int NextIndex; int ActivePoolIdx; int PendingPoolIdx; TYPE_1__ FlowContCB; int SyncObj; struct TYPE_8__* ObjPool; int AdditionalData; scalar_t__ FreePoolIdx; int ProtectionLockObj; int GlobalLockObj; int CmdSyncObj; } ;
struct TYPE_9__ {TYPE_2__ DriverCB; } ;


 int FLOW_CONT_MIN ;
 int MALLOC_OK_CHECK (TYPE_2__*) ;
 int MAX_CONCURRENT_ACTIONS ;
 int OSI_RET_OK_CHECK (int ) ;
 scalar_t__ RxIrqCnt ;
 int SL_MAX_SOCKETS ;
 int _SlDrvMemZero (TYPE_2__*,int) ;
 scalar_t__ gFirstCmdMode ;
 TYPE_4__ g_StatMem ;
 TYPE_2__* g_pCB ;
 int sl_LockObjCreate (int *,char*) ;
 TYPE_2__* sl_Malloc (int) ;
 int sl_SyncObjClear (int *) ;
 int sl_SyncObjCreate (int *,char*) ;

void _SlDrvDriverCBInit(void)
{
    _u8 Idx =0;


    g_pCB = sl_Malloc(sizeof(_SlDriverCb_t));



    MALLOC_OK_CHECK(g_pCB);


    _SlDrvMemZero(g_pCB, sizeof(_SlDriverCb_t));
    RxIrqCnt = 0;
    OSI_RET_OK_CHECK( sl_SyncObjCreate(&g_pCB->CmdSyncObj, "CmdSyncObj") );
    sl_SyncObjClear(&g_pCB->CmdSyncObj);

    OSI_RET_OK_CHECK( sl_LockObjCreate(&g_pCB->GlobalLockObj, "GlobalLockObj") );
    OSI_RET_OK_CHECK( sl_LockObjCreate(&g_pCB->ProtectionLockObj, "ProtectionLockObj") );


    _SlDrvMemZero(&g_pCB->ObjPool[0], MAX_CONCURRENT_ACTIONS*sizeof(_SlPoolObj_t));


    g_pCB->FreePoolIdx = 0;

    for (Idx = 0 ; Idx < MAX_CONCURRENT_ACTIONS ; Idx++)
    {
        g_pCB->ObjPool[Idx].NextIndex = Idx + 1;
        g_pCB->ObjPool[Idx].AdditionalData = SL_MAX_SOCKETS;

        OSI_RET_OK_CHECK( sl_SyncObjCreate(&g_pCB->ObjPool[Idx].SyncObj, "SyncObj"));
        sl_SyncObjClear(&g_pCB->ObjPool[Idx].SyncObj);
    }

     g_pCB->ActivePoolIdx = MAX_CONCURRENT_ACTIONS;
     g_pCB->PendingPoolIdx = MAX_CONCURRENT_ACTIONS;


    g_pCB->FlowContCB.TxPoolCnt = FLOW_CONT_MIN;
    OSI_RET_OK_CHECK(sl_LockObjCreate(&g_pCB->FlowContCB.TxLockObj, "TxLockObj"));
    OSI_RET_OK_CHECK(sl_SyncObjCreate(&g_pCB->FlowContCB.TxSyncObj, "TxSyncObj"));

    gFirstCmdMode = 0;

}
