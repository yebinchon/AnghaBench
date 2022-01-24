#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  jit_debug; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_JIT_DEBUG_GDB ; 
 int /*<<< orphan*/  accel_directives ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
#if 0
	/* This might enable registration of all JIT-ed code, but unfortunately,
	 * in case of many functions, this takes enormous time. */
	if (zend_gdb_present()) {
		ZCG(accel_directives).jit_debug |= ZEND_JIT_DEBUG_GDB;
	}
#endif
}