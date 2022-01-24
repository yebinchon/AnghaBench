#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t _u8 ;
struct TYPE_5__ {int /*<<< orphan*/  TxSyncObj; int /*<<< orphan*/  TxLockObj; scalar_t__ TxPoolCnt; } ;
struct TYPE_7__ {size_t PendingPoolIdx; size_t ActivePoolIdx; scalar_t__ FreePoolIdx; TYPE_2__* ObjPool; int /*<<< orphan*/  ProtectionLockObj; int /*<<< orphan*/  GlobalLockObj; int /*<<< orphan*/  CmdSyncObj; TYPE_1__ FlowContCB; } ;
struct TYPE_6__ {int /*<<< orphan*/  SyncObj; } ;

/* Variables and functions */
 size_t MAX_CONCURRENT_ACTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* g_pCB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4()
{
    _u8  Idx =0;

    /* Flow control de-init */
    g_pCB->FlowContCB.TxPoolCnt = 0;
    FUNC0(FUNC2(&g_pCB->FlowContCB.TxLockObj));
    FUNC0(FUNC3(&g_pCB->FlowContCB.TxSyncObj));
    
    FUNC0( FUNC3(&g_pCB->CmdSyncObj) );
    FUNC0( FUNC2(&g_pCB->GlobalLockObj) );
    FUNC0( FUNC2(&g_pCB->ProtectionLockObj) );
        
 #ifndef SL_TINY_EXT
    for (Idx = 0; Idx < MAX_CONCURRENT_ACTIONS; Idx++)
 #endif
    {
	FUNC0( FUNC3(&g_pCB->ObjPool[Idx].SyncObj) );   
    }

    g_pCB->FreePoolIdx = 0;
    g_pCB->PendingPoolIdx = MAX_CONCURRENT_ACTIONS;
    g_pCB->ActivePoolIdx = MAX_CONCURRENT_ACTIONS;

#if (SL_MEMORY_MGMT == SL_MEMORY_MGMT_DYNAMIC)
    FUNC1(g_pCB);
#else
    g_pCB = NULL;
#endif


    g_pCB = NULL;
}