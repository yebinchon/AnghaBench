#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _SlSpawnEntryFunc_t ;
struct TYPE_2__ {scalar_t__ IsCmdRespWaited; int /*<<< orphan*/  CmdSyncObj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RxIrqCnt ; 
 scalar_t__ TRUE ; 
 scalar_t__ _SlDrvMsgReadSpawnCtx ; 
 TYPE_1__* g_pCB ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void *pValue)
{
    FUNC1();

    RxIrqCnt++;

    if (TRUE == g_pCB->IsCmdRespWaited)
    {
        FUNC0( FUNC3(&g_pCB->CmdSyncObj) );
    }
    else
    {
        FUNC2((_SlSpawnEntryFunc_t)_SlDrvMsgReadSpawnCtx, NULL, 0);
    }
}