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
typedef  int /*<<< orphan*/  _GetHostByNameIPv6AsyncResponse_t ;
typedef  int /*<<< orphan*/  _GetHostByNameIPv4AsyncResponse_t ;
struct TYPE_6__ {size_t ActionIndex; } ;
struct TYPE_7__ {TYPE_2__ AsyncExt; } ;
struct TYPE_8__ {TYPE_3__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_5__ {int AdditionalData; int /*<<< orphan*/  SyncObj; int /*<<< orphan*/ * pRespArgs; } ;

/* Variables and functions */
 int SL_NETAPP_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* g_pCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC6(void *pVoidBuf)
{
    _GetHostByNameIPv4AsyncResponse_t     *pMsgArgs   = (_GetHostByNameIPv4AsyncResponse_t *)FUNC1(pVoidBuf);

   FUNC2();

    FUNC0(NULL != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);

	/*IPv6 */
	if(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].AdditionalData & SL_NETAPP_FAMILY_MASK)
	{
		FUNC5(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_GetHostByNameIPv6AsyncResponse_t));
	}
	/*IPv4 */
	else
	{
		FUNC5(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs, sizeof(_GetHostByNameIPv4AsyncResponse_t));
	}
	FUNC4(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    FUNC3();
    return;
}