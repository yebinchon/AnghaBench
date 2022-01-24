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
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SET_FILE_POINTER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC6(HANDLE hFile, DWORD dwFormat, DWORD dwOffset, PDWORD pdwLength)
{
    HGLOBAL hData;
    LPVOID lpData;
    DWORD dwBytesWritten;

    hData = FUNC0(dwFormat);
    if (!hData)
        return FALSE;

    lpData = FUNC1(hData);
    if (!lpData)
        return FALSE;

    *pdwLength = FUNC2(hData);

    if (FUNC4(hFile, dwOffset, NULL, FILE_BEGIN) == INVALID_SET_FILE_POINTER)
    {
        FUNC3(hData);
        return FALSE;
    }

    if (!FUNC5(hFile, lpData, *pdwLength, &dwBytesWritten, NULL))
    {
        FUNC3(hData);
        return FALSE;
    }

    FUNC3(hData);

    return TRUE;
}