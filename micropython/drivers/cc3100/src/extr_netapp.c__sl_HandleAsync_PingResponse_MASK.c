#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _PingReportResponse_t ;
struct TYPE_10__ {size_t ActionIndex; } ;
struct TYPE_11__ {TYPE_4__ AsyncExt; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pAsyncRsp; } ;
struct TYPE_8__ {TYPE_1__ PingAsync; } ;
struct TYPE_12__ {TYPE_5__ FunctionParams; TYPE_3__* ObjPool; TYPE_2__ PingCB; } ;
struct TYPE_9__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/ * pRespArgs; } ;
typedef  int /*<<< orphan*/  SlPingReport_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_6__* g_pCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC8(void *pVoidBuf)
{
    _PingReportResponse_t     *pMsgArgs   = (_PingReportResponse_t *)FUNC2(pVoidBuf);
    SlPingReport_t            pingReport;
    
    if(&pPingCallBackFunc)
    {
        FUNC0(pMsgArgs,&pingReport);
        FUNC6(&pingReport);
    }
    else
    {
       
        FUNC3();
        
        FUNC1(NULL != g_pCB->PingCB.PingAsync.pAsyncRsp);

		if (NULL != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs)
		{
		   FUNC7(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_PingReportResponse_t));
		   FUNC5(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
		}
       FUNC4();
    }
    return;
}