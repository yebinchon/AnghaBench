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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__* PCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int ENABLE_ECHO_INPUT ; 
 int ENABLE_LINE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InputCodePage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 

VOID FUNC9(LPTSTR lpInput, DWORD dwLength)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;

    LPTSTR p;
    PCHAR pBuf;

#ifdef _UNICODE
    pBuf = (PCHAR)cmd_alloc(dwLength - 1);
#else
    pBuf = lpInput;
#endif
    FUNC5(lpInput, dwLength * sizeof(TCHAR));
    hFile = FUNC1(STD_INPUT_HANDLE);
    FUNC0(hFile, &dwOldMode);

    FUNC4(hFile, ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT);

    FUNC3(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, NULL);

#ifdef _UNICODE
    MultiByteToWideChar(InputCodePage, 0, pBuf, dwRead, lpInput, dwLength - 1);
    cmd_free(pBuf);
#endif
    for (p = lpInput; *p; p++)
    {
        if (*p == FUNC6('\x0d'))
        {
            *p = FUNC6('\0');
            break;
        }
    }

    FUNC4(hFile, dwOldMode);
}