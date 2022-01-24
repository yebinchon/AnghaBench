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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPCVOID ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  CRYPT_STRING_BASE64 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ isBase64InterceptOutput ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

BOOL FUNC8(PCWCHAR fileName, LPCVOID data, DWORD lenght)
{
	BOOL reussite = FALSE;
	DWORD dwBytesWritten = 0, i;
	HANDLE hFile = NULL;
	LPWSTR base64;

	if(isBase64InterceptOutput)
	{
		if(FUNC2((const BYTE *) data, lenght, CRYPT_STRING_BASE64, NULL, &dwBytesWritten))
		{
			if((base64 = (LPWSTR) FUNC4(LPTR, dwBytesWritten * sizeof(wchar_t))))
			{
				if((reussite = FUNC2((const BYTE *) data, lenght, CRYPT_STRING_BASE64, base64, &dwBytesWritten)))
				{
					FUNC7(L"\n====================\nBase64 of file : %s\n====================\n", fileName);
					for(i = 0; i < dwBytesWritten; i++)
						FUNC7(L"%c", base64[i]);
					FUNC7(L"====================\n");
				}
				FUNC5(base64);
			}
		}
	}
	else if((hFile = FUNC1(fileName, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL)) && hFile != INVALID_HANDLE_VALUE)
	{
		if(FUNC6(hFile, data, lenght, &dwBytesWritten, NULL) && (lenght == dwBytesWritten))
			reussite = FUNC3(hFile);
		FUNC0(hFile);
	}
	return reussite;
}