
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TxSyncObj; int TxLockObj; int TxPoolCnt; } ;
struct TYPE_4__ {TYPE_1__ FlowContCB; } ;


 int FLOW_CONT_MIN ;
 int OSI_RET_OK_CHECK (int ) ;
 TYPE_2__* g_pCB ;
 int sl_LockObjCreate (int *,char*) ;
 int sl_SyncObjCreate (int *,char*) ;

void _SlDrvFlowContInit(void)
{
    g_pCB->FlowContCB.TxPoolCnt = FLOW_CONT_MIN;

    OSI_RET_OK_CHECK(sl_LockObjCreate(&g_pCB->FlowContCB.TxLockObj, "TxLockObj"));

    OSI_RET_OK_CHECK(sl_SyncObjCreate(&g_pCB->FlowContCB.TxSyncObj, "TxSyncObj"));
}
