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
struct TYPE_9__ {int sd; int /*<<< orphan*/  statusOrLen; } ;
typedef  TYPE_4__ _SocketResponse_t ;
struct TYPE_7__ {size_t ActionIndex; } ;
struct TYPE_8__ {TYPE_2__ AsyncExt; } ;
struct TYPE_10__ {TYPE_3__ FunctionParams; TYPE_1__* ObjPool; } ;
struct TYPE_6__ {int /*<<< orphan*/  SyncObj; int /*<<< orphan*/ * pRespArgs; } ;

/* Variables and functions */
 int BSD_SOCKET_ID_MASK ; 
 int SL_MAX_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_5__* g_pCB ; 

void FUNC6(void *pVoidBuf)
{
    _SocketResponse_t          *pMsgArgs   = (_SocketResponse_t *)FUNC2(pVoidBuf);

    FUNC3();

    FUNC0((pMsgArgs->sd & BSD_SOCKET_ID_MASK) <= SL_MAX_SOCKETS);
    FUNC1(NULL != g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs);
    

    ((_SocketResponse_t *)(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs))->sd = pMsgArgs->sd;
    ((_SocketResponse_t *)(g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].pRespArgs))->statusOrLen = pMsgArgs->statusOrLen;


    FUNC5(&g_pCB->ObjPool[g_pCB->FunctionParams.AsyncExt.ActionIndex].SyncObj);
    FUNC4();
    return;
}