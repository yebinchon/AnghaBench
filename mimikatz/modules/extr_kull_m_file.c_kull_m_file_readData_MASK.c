#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ LowPart; int /*<<< orphan*/  HighPart; } ;
typedef  scalar_t__* PDWORD ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ isBase64InterceptInput ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

BOOL FUNC8(PCWCHAR fileName, PBYTE * data, PDWORD lenght)	// for ""little"" files !
{
	BOOL reussite = FALSE;
	DWORD dwBytesReaded;
	LARGE_INTEGER filesize;
	HANDLE hFile = NULL;

	if(isBase64InterceptInput)
	{
		if(!(reussite = FUNC7(fileName, data, lenght)))
			FUNC5(L"kull_m_string_quick_base64_to_Binary");
	}
	else if((hFile = FUNC1(fileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL)) && hFile != INVALID_HANDLE_VALUE)
	{
		if(FUNC2(hFile, &filesize) && !filesize.HighPart)
		{
			*lenght = filesize.LowPart;
			if((*data = (PBYTE) FUNC3(LPTR, *lenght)))
			{
				if(!(reussite = FUNC6(hFile, *data, *lenght, &dwBytesReaded, NULL) && (*lenght == dwBytesReaded)))
					FUNC4(*data);
			}
		}
		FUNC0(hFile);
	}
	return reussite;
}