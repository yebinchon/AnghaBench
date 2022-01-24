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
typedef  int /*<<< orphan*/  RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(RAnalOp *op, int sz) {
	FUNC0 ("sp,_ram,+,");			// calc pointer SRAM(sp)
	if (sz > 1) {
		FUNC0 ("-%d,+,", sz - 1);	// dec SP by 'sz'
	}
	FUNC0 ("=[%d],", sz);			// store value in stack
	FUNC0 ("-%d,sp,+=,", sz);		// decrement stack pointer
}