#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  RPC_BINDING_VECTOR ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  drsuapi_v4_0_s_ifspec ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

NTSTATUS FUNC8()
{
	RPC_STATUS status;
	RPC_BINDING_VECTOR *vector = NULL;

	status = FUNC5(&vector);
	if(status == RPC_S_OK)
	{
		status = FUNC2(drsuapi_v4_0_s_ifspec, vector, NULL);
		if(status == RPC_S_OK)
			FUNC7(L" > RPC bind unregistered\n");
		else FUNC0(L"RpcEpUnregister: %08x\n", status);
		FUNC1(&vector);
	}
	else FUNC0(L"RpcServerInqBindings: %08x\n", status);
	status = FUNC6(drsuapi_v4_0_s_ifspec, NULL, 1);
	if(status != RPC_S_OK)
		FUNC0(L"RpcServerUnregisterIf: %08x\n", status);
	status = FUNC3(NULL);
	if(status != RPC_S_OK)
		FUNC0(L"RpcMgmtStopServerListening: %08x\n", status);
	else
	{
		FUNC7(L" > stopping RPC server\n");
		FUNC4();
		FUNC7(L" > RPC server stopped\n");
	}
	return status;
}