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
typedef  int /*<<< orphan*/  MIB_UDPTABLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * udpTable ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD size = 0, ret = FUNC1(NULL, &size, TRUE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_UDPTABLE *table = FUNC2(FUNC0(), 0, size);
        if (table)
        {
            if (!FUNC1(table, &size, TRUE)) udpTable = table;
            else FUNC3(FUNC0(), 0, table);
        }
    }
}