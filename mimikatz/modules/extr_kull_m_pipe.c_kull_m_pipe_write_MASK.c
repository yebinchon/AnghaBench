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
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 

BOOL FUNC3(HANDLE hPipe, LPCVOID buffer, DWORD size)
{
	BOOL status = FALSE;
	DWORD nbWritten;
	if(FUNC2(hPipe, buffer, size, &nbWritten, NULL) && (size == nbWritten))
	{
		if(!(status = FUNC0(hPipe)))
			FUNC1(L"FlushFileBuffers");
	}
	else FUNC1(L"WriteFile");
	return status;
}