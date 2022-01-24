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
 unsigned long FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long,unsigned long) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned long val)
{
	unsigned long cur_dscr, cur_dscr_usr;

	cur_dscr = FUNC0();
	cur_dscr_usr = FUNC1();

	if (val != cur_dscr) {
		FUNC2("[cpu %d] Kernel DSCR should be %ld but is %ld\n",
					FUNC3(), val, cur_dscr);
		return 1;
	}

	if (val != cur_dscr_usr) {
		FUNC2("[cpu %d] User DSCR should be %ld but is %ld\n",
					FUNC3(), val, cur_dscr_usr);
		return 1;
	}
	return 0;
}