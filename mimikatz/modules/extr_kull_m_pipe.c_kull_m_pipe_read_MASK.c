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
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

BOOL FUNC6(HANDLE hPipe, LPBYTE *buffer, DWORD *size)
{
	BOOL status = FALSE;
	DWORD szReaded, szBuffer = 0;
	BYTE * tmpBuffer = NULL; DWORD szTmpBuffer = 0;

	*size = 0;
	*buffer = NULL;
	do
	{
		if(*buffer)
		{
			tmpBuffer = *buffer;
			szTmpBuffer = szBuffer;
		}
	
		szBuffer += 2048;
		if((*buffer = (BYTE *) FUNC1(LPTR, szBuffer)))
		{
			if(tmpBuffer)
			{
				FUNC5(*buffer, tmpBuffer, szTmpBuffer);
				tmpBuffer = (BYTE *) FUNC2(tmpBuffer);
			}

			if((status = FUNC4(hPipe, *buffer + szTmpBuffer, 2048, &szReaded, NULL)))
			{
				*size = szTmpBuffer + szReaded;
				break;
			}
		}
	} while(FUNC0() == ERROR_MORE_DATA);

	if(!status)
	{
		FUNC3(L"ReadFile");
		*buffer = (BYTE *) FUNC2(*buffer);
		*size = 0;
	}
	return status;
}