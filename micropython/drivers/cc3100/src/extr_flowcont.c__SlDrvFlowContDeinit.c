
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TxSyncObj; int TxLockObj; scalar_t__ TxPoolCnt; } ;
struct TYPE_4__ {TYPE_1__ FlowContCB; } ;


 int OSI_RET_OK_CHECK (int ) ;
 TYPE_2__* g_pCB ;
 int sl_LockObjDelete (int *) ;
 int sl_SyncObjDelete (int *) ;

void _SlDrvFlowContDeinit(void)
{
    g_pCB->FlowContCB.TxPoolCnt = 0;

    OSI_RET_OK_CHECK(sl_LockObjDelete(&g_pCB->FlowContCB.TxLockObj));

    OSI_RET_OK_CHECK(sl_SyncObjDelete(&g_pCB->FlowContCB.TxSyncObj));
}
