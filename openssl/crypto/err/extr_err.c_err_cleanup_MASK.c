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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * err_string_lock ; 
 int /*<<< orphan*/  err_thread_local ; 
 int /*<<< orphan*/ * int_error_hash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ set_err_thread_local ; 

void FUNC3(void)
{
    if (set_err_thread_local != 0)
        FUNC0(&err_thread_local);
    FUNC1(err_string_lock);
    err_string_lock = NULL;
    FUNC2(int_error_hash);
    int_error_hash = NULL;
}