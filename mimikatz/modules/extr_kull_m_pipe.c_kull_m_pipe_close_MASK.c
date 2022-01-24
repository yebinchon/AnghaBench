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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_PIPE_NOT_CONNECTED ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int PIPE_SERVER_END ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

BOOL FUNC5(PHANDLE phPipe)
{
	BOOL status = FALSE;
	DWORD flags = 0;
	if(*phPipe && (*phPipe != INVALID_HANDLE_VALUE))
	{
		if(FUNC3(*phPipe, &flags, NULL, NULL, NULL) || (FUNC2() == ERROR_PIPE_NOT_CONNECTED))
		{
			if(flags & PIPE_SERVER_END)
			{
				if(!FUNC1(*phPipe))
					FUNC4(L"DisconnectNamedPipe");
			}
			if((status = FUNC0(*phPipe)))
				*phPipe = INVALID_HANDLE_VALUE;
			else FUNC4(L"CloseHandle");
		}
		else FUNC4(L"GetNamedPipeInfo");
	}
	return status;
}