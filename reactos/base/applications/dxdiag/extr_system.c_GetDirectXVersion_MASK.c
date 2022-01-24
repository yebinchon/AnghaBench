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
typedef  int /*<<< orphan*/  szVer ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static 
BOOL
FUNC3(WCHAR * szBuffer)
{
    WCHAR szVer[20];

    if (!FUNC0(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\DirectX", L"Version", REG_SZ, szVer, sizeof(szVer)))
        return FALSE;

    if(!FUNC1(szVer, L"4.02.0095"))
        FUNC2(szBuffer, L"1.0");
    else if (!FUNC1(szVer, L"4.03.00.1096"))
        FUNC2(szBuffer, L"2.0");
    else if (!FUNC1(szVer, L"4.04.0068"))
        FUNC2(szBuffer, L"3.0");
    else if (!FUNC1(szVer, L"4.04.0069"))
        FUNC2(szBuffer, L"3.0");
    else if (!FUNC1(szVer, L"4.05.00.0155"))
        FUNC2(szBuffer, L"5.0");
    else if (!FUNC1(szVer, L"4.05.01.1721"))
        FUNC2(szBuffer, L"5.0");
    else if (!FUNC1(szVer, L"4.05.01.1998"))
        FUNC2(szBuffer, L"5.0");
    else if (!FUNC1(szVer, L"4.06.02.0436"))
        FUNC2(szBuffer, L"6.0");
    else if (!FUNC1(szVer, L"4.07.00.0700"))
        FUNC2(szBuffer, L"7.0");
    else if (!FUNC1(szVer, L"4.07.00.0716"))
        FUNC2(szBuffer, L"7.0a");
    else if (!FUNC1(szVer, L"4.08.00.0400"))
        FUNC2(szBuffer, L"8.0");
    else if (!FUNC1(szVer, L"4.08.01.0881"))
        FUNC2(szBuffer, L"8.1");
    else if (!FUNC1(szVer, L"4.08.01.0810"))
        FUNC2(szBuffer, L"8.1");
    else if (!FUNC1(szVer, L"4.09.0000.0900"))
        FUNC2(szBuffer, L"9.0");
    else if (!FUNC1(szVer, L"4.09.00.0900"))
        FUNC2(szBuffer, L"9.0");
    else if (!FUNC1(szVer, L"4.09.0000.0901"))
        FUNC2(szBuffer, L"9.0a");
    else if (!FUNC1(szVer, L"4.09.00.0901"))
        FUNC2(szBuffer, L"9.0a");
    else if (!FUNC1(szVer, L"4.09.0000.0902"))
        FUNC2(szBuffer, L"9.0b");
    else if (!FUNC1(szVer, L"4.09.00.0902"))
        FUNC2(szBuffer, L"9.0b");
    else if (!FUNC1(szVer, L"4.09.00.0904"))
        FUNC2(szBuffer, L"9.0c");
    else if (!FUNC1(szVer, L"4.09.0000.0904"))
        FUNC2(szBuffer, L"9.0c");
    else
        return FALSE;

    return TRUE;
}