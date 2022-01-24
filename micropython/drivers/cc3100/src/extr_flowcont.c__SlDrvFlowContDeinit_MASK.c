#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  TxSyncObj; int /*<<< orphan*/  TxLockObj; scalar_t__ TxPoolCnt; } ;
struct TYPE_4__ {TYPE_1__ FlowContCB; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* g_pCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    g_pCB->FlowContCB.TxPoolCnt = 0;

    FUNC0(FUNC1(&g_pCB->FlowContCB.TxLockObj));

    FUNC0(FUNC2(&g_pCB->FlowContCB.TxSyncObj));
}