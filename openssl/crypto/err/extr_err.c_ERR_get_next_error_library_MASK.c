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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_err_strings_init ; 
 int /*<<< orphan*/  err_string_init ; 
 int /*<<< orphan*/  err_string_lock ; 
 int /*<<< orphan*/  int_err_library_number ; 

int FUNC3(void)
{
    int ret;

    if (!FUNC2(&err_string_init, do_err_strings_init))
        return 0;

    FUNC1(err_string_lock);
    ret = int_err_library_number++;
    FUNC0(err_string_lock);
    return ret;
}