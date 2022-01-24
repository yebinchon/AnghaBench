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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

void FUNC4(void)
{
    ENGINE *toadd = FUNC3();
    if (!toadd)
        return;
    FUNC0(toadd);
    /*
     * If the "add" worked, it gets a structural reference. So either way, we
     * release our just-created reference.
     */
    FUNC1(toadd);
    /*
     * If the "add" didn't work, it was probably a conflict because it was
     * already added (eg. someone calling ENGINE_load_blah then calling
     * ENGINE_load_builtin_engines() perhaps).
     */
    FUNC2();
}