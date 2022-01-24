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
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ PCHAR ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int ENABLE_ECHO_INPUT ; 
 int ENABLE_LINE_INPUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int UNICODE_NULL ; 

__attribute__((used)) static
VOID
FUNC9(LPWSTR lpInput, DWORD dwLength)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;
    LPWSTR p;
    PCHAR pBuf;

    pBuf = (PCHAR)FUNC4(FUNC2(), HEAP_ZERO_MEMORY, dwLength - 1);

    hFile = FUNC3(STD_INPUT_HANDLE);
    FUNC1(hFile, &dwOldMode);

    FUNC8(hFile, ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT);

    FUNC7(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, NULL);

    FUNC6(FUNC0(), 0, pBuf, dwRead, lpInput, dwLength - 1);
    FUNC5(FUNC2(), 0, pBuf);

    for (p = lpInput; *p; p++)
    {
        if (*p == L'\x0d')
        {
            *p = UNICODE_NULL;
            break;
        }
    }

    FUNC8(hFile, dwOldMode);
}