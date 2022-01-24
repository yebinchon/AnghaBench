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
typedef  scalar_t__ PCHAR ;
typedef  int* PBYTE ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (scalar_t__,int,char*,int) ; 

BOOL FUNC4(LPCVOID data, DWORD dwData, LPBYTE dest, DWORD dwDest)
{
	BOOL status = FALSE;
	PCHAR buffer;
	DWORD dwBuffer = dwData * 2 + 1, i;
	if(dwDest >= (dwData * 2))
	{
		if((buffer = (PCHAR) FUNC0(LPTR, dwBuffer)))
		{
			for(i = 0; i < dwData; i++)
				if(FUNC3(buffer + i * 2, dwBuffer - i * 2, "%02x", ((PBYTE) data)[i]) < 2)
					break;
			if((status = (i == dwData)))
				FUNC2(dest, buffer, dwBuffer - 1);
			FUNC1(buffer);
		}
	}
	return status;
}