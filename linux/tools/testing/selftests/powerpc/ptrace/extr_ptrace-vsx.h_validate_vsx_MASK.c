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
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int VSX_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long,int,unsigned long) ; 

int FUNC1(unsigned long *vsx, unsigned long *load)
{
	int i;

	for (i = 0; i < VSX_MAX; i++) {
		if (vsx[i] != load[2 * i + 1]) {
			FUNC0("vsx[%d]: %lx load[%d] %lx\n",
					i, vsx[i], 2 * i + 1, load[2 * i + 1]);
			return TEST_FAIL;
		}
	}
	return TEST_PASS;
}