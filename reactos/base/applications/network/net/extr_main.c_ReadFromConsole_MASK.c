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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ PCHAR ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_OEMCP ; 
 int ENABLE_ECHO_INPUT ; 
 int ENABLE_LINE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 

VOID
FUNC9(
    LPWSTR lpInput,
    DWORD dwLength,
    BOOL bEcho)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;
    LPWSTR p;
    PCHAR pBuf;

    pBuf = FUNC3(FUNC1(), 0, dwLength - 1);
    FUNC8(lpInput, dwLength * sizeof(WCHAR));
    hFile = FUNC2(STD_INPUT_HANDLE);
    FUNC0(hFile, &dwOldMode);

    FUNC7(hFile, ENABLE_LINE_INPUT | (bEcho ? ENABLE_ECHO_INPUT : 0));

    FUNC6(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, NULL);

    FUNC5(CP_OEMCP, 0, pBuf, dwRead, lpInput, dwLength - 1);
    FUNC4(FUNC1(), 0, pBuf);

    for (p = lpInput; *p; p++)
    {
        if (*p == L'\x0d')
        {
            *p = L'\0';
            break;
        }
    }

    FUNC7(hFile, dwOldMode);
}