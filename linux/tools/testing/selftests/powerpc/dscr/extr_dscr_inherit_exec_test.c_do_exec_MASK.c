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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(unsigned long parent_dscr)
{
	unsigned long cur_dscr, cur_dscr_usr;

	cur_dscr = FUNC2();
	cur_dscr_usr = FUNC3();

	if (cur_dscr != parent_dscr) {
		FUNC1(stderr, "Parent DSCR %ld was not inherited "
				"over exec (kernel value)\n", parent_dscr);
		FUNC0(1);
	}

	if (cur_dscr_usr != parent_dscr) {
		FUNC1(stderr, "Parent DSCR %ld was not inherited "
				"over exec (user value)\n", parent_dscr);
		FUNC0(1);
	}
	FUNC0(0);
}