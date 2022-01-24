#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _SelectAsyncResponse_t ;
struct TYPE_7__ {size_t ActionIndex; } ;
struct TYPE_6__ {TYPE_3__ AsyncExt; } ;
struct TYPE_8__ {TYPE_2__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_5__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/ * pRespArgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* g_pCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC6(void *pVoidBuf)
{
    _SelectAsyncResponse_t     *pMsgArgs   = (_SelectAsyncResponse_t *)FUNC1(pVoidBuf);

    FUNC2();    

    FUNC0(NULL != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);

    FUNC5(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_SelectAsyncResponse_t));

    FUNC4(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    FUNC3();

    return;
}