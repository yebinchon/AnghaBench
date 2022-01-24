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
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SIZE_T
FUNC3(
    BOOL UseSMBios,
    PCHAR DmiString,
    LPWSTR RegValue,
    PVOID pBuf,
    DWORD cchBuf,
    BOOL bTrim)
{
    SIZE_T Length = 0;
    BOOL Result;

    if (UseSMBios)
    {
        Length = FUNC1(DmiString, pBuf, cchBuf, bTrim);
    }
    if (Length == 0)
    {
        Result = FUNC0(HKEY_LOCAL_MACHINE, L"Hardware\\Description\\System\\BIOS", RegValue, REG_SZ, pBuf, cchBuf * sizeof(WCHAR));
        if (Result)
        {
            Length = FUNC2(pBuf);
        }
    }
    return Length;
}