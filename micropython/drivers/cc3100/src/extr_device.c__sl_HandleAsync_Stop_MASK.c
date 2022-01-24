#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _BasicResponse_t ;
struct TYPE_8__ {size_t ActionIndex; } ;
struct TYPE_9__ {TYPE_3__ AsyncExt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pAsyncRsp; } ;
struct TYPE_10__ {TYPE_4__ FunctionParams; TYPE_2__* ObjPool; TYPE_1__ StopCB; } ;
struct TYPE_7__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/  pRespArgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* g_pCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC6(void *pVoidBuf)
{
    _BasicResponse_t     *pMsgArgs   = (_BasicResponse_t *)FUNC1(pVoidBuf);

    FUNC0(NULL != g_pCB->StopCB.pAsyncRsp);

    FUNC2();

    FUNC5(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_BasicResponse_t));

    FUNC4(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    FUNC3();
    
    return;
}