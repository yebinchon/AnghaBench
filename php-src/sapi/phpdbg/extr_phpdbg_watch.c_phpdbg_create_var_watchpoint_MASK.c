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
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  phpdbg_create_simple_watchpoint ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(char *input, size_t len) {
	if (FUNC0() == FAILURE) {
		return FAILURE;
	}

	return FUNC1(input, len, phpdbg_create_simple_watchpoint);
}