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
typedef  int /*<<< orphan*/  PRINTER_INFO_2A ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static PRINTER_INFO_2A * FUNC6(HANDLE hprn)
{
    PRINTER_INFO_2A *pi2 = NULL;
    DWORD needed = 0;
    BOOL res;

    res = FUNC1(hprn, 2, NULL, 0, &needed);
    if (!res && (FUNC0() == ERROR_INSUFFICIENT_BUFFER)) {
        pi2 = FUNC3(FUNC2(), 0, needed);
        res = FUNC1(hprn, 2, (LPBYTE)pi2, needed, &needed);
    }

    if (res)
        return pi2;

    FUNC5("GetPrinterA failed with %u\n", FUNC0());
    FUNC4(FUNC2(), 0, pi2);
    return NULL;
}