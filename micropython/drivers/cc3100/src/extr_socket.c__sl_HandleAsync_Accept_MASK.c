#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int sd; } ;
struct TYPE_12__ {TYPE_4__ IpV4; } ;
typedef  TYPE_5__ _SocketAddrResponse_u ;
struct TYPE_9__ {size_t ActionIndex; } ;
struct TYPE_10__ {TYPE_2__ AsyncExt; } ;
struct TYPE_13__ {TYPE_3__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_8__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/ * pRespArgs; } ;

/* Variables and functions */
 int BSD_SOCKET_ID_MASK ; 
 int SL_MAX_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_7__* g_pCB ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 

void FUNC7(void *pVoidBuf)
{
    _SocketAddrResponse_u      *pMsgArgs   = (_SocketAddrResponse_u *)FUNC2(pVoidBuf);

    FUNC3();

    FUNC0(( pMsgArgs->IpV4.sd & BSD_SOCKET_ID_MASK) <= SL_MAX_SOCKETS);
    FUNC1(NULL != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);

	FUNC6(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs, pMsgArgs,sizeof(_SocketAddrResponse_u));
	FUNC5(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);

    FUNC4();
    return;
}