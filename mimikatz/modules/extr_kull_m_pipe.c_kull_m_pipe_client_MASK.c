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
typedef  scalar_t__* PHANDLE ;
typedef  int /*<<< orphan*/  LPCWCHAR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NMPWAIT_USE_DEFAULT_WAIT ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int PIPE_READMODE_MESSAGE ; 
 int PIPE_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC4(LPCWCHAR pipeName, PHANDLE phPipe)
{
	BOOL status = FALSE;
	DWORD dwMode = PIPE_READMODE_MESSAGE | PIPE_WAIT;
	if(FUNC3(pipeName, NMPWAIT_USE_DEFAULT_WAIT))
	{
		*phPipe = FUNC0(pipeName, GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
		if(*phPipe && (*phPipe != INVALID_HANDLE_VALUE))
		{
			if(!(status = FUNC2(*phPipe, &dwMode, NULL, NULL)))
				FUNC1(L"SetNamedPipeHandleState");
		}
		else FUNC1(L"CreateFile");
	}
	else FUNC1(L"WaitNamedPipe");
	return status;
}