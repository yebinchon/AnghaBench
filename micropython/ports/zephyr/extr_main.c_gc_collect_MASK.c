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
typedef  int mp_uint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stack_top ; 

void FUNC4(void) {
    // WARNING: This gc_collect implementation doesn't try to get root
    // pointers from CPU registers, and thus may function incorrectly.
    void *dummy;
    FUNC3();
    FUNC2(&dummy, ((mp_uint_t)FUNC0(stack_top) - (mp_uint_t)&dummy) / sizeof(mp_uint_t));
    FUNC1();
    //gc_dump_info();
}