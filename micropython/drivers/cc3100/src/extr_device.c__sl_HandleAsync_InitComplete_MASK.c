#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t ActionIndex; } ;
struct TYPE_9__ {TYPE_2__ AsyncExt; } ;
struct TYPE_11__ {TYPE_3__ FunctionParams; int /*<<< orphan*/  (* pInitCallback ) (int /*<<< orphan*/ ) ;TYPE_1__* ObjPool; } ;
struct TYPE_10__ {int /*<<< orphan*/  Status; } ;
struct TYPE_7__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/  pRespArgs; } ;
typedef  TYPE_4__ InitComplete_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_6__* g_pCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void *pVoidBuf)
{
    InitComplete_t     *pMsgArgs   = (InitComplete_t *)FUNC0(pVoidBuf);

    FUNC1();

    if(g_pCB->pInitCallback)
    {
        g_pCB->pInitCallback(FUNC5(pMsgArgs->Status));
    }
    else
    {
        FUNC6(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(InitComplete_t));
        FUNC4(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    }
    
   FUNC2();
   
    if(g_pCB->pInitCallback)
    {
        FUNC3(g_pCB->FunctionParams.AsyncExt.ActionIndex);
    }

}