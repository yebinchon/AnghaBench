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
typedef  int /*<<< orphan*/  MIB_IPADDRTABLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * ipAddrTable ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD size = 0, ret = FUNC0(NULL, &size, TRUE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_IPADDRTABLE *table = FUNC2(FUNC1(), 0, size);
        if (table)
        {
            if (!FUNC0(table, &size, TRUE)) ipAddrTable = table;
            else FUNC3(FUNC1(), 0, table );
        }
    }
}