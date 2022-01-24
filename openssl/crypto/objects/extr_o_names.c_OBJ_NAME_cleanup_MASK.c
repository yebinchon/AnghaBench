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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int free_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  name_funcs_free ; 
 int /*<<< orphan*/ * name_funcs_stack ; 
 int /*<<< orphan*/ * names_lh ; 
 int /*<<< orphan*/  names_lh_free_doall ; 
 int /*<<< orphan*/ * obj_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(int type)
{
    unsigned long down_load;

    if (names_lh == NULL)
        return;

    free_type = type;
    down_load = FUNC3(names_lh);
    FUNC4(names_lh, 0);

    FUNC1(names_lh, names_lh_free_doall);
    if (type < 0) {
        FUNC2(names_lh);
        FUNC5(name_funcs_stack, name_funcs_free);
        FUNC0(obj_lock);
        names_lh = NULL;
        name_funcs_stack = NULL;
        obj_lock = NULL;
    } else
        FUNC4(names_lh, down_load);
}