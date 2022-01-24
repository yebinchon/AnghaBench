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
typedef  int /*<<< orphan*/  REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(REgg *egg, int sz) {
	FUNC0 (egg, "  push {fp,lr}\n");
	if (sz > 0) {
		FUNC0 (egg,
			// "  mov "R_BP", "R_SP"\n"
			"  add fp, sp, $4\n"	// size of arguments
			"  sub sp, %d\n", sz);	// size of stackframe 8, 16, ..
	}
}