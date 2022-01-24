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
typedef  int /*<<< orphan*/  (* swap_func_t ) (void*,void*) ;
typedef  scalar_t__ (* compare_func_t ) (void*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,void*,scalar_t__ (*) (void*,void*),int /*<<< orphan*/  (*) (void*,void*)) ; 

__attribute__((used)) static void FUNC1(void *a, void *b, void *c, void *d, compare_func_t cmp, swap_func_t swp) /* {{{ */ {
	FUNC0(a, b, c, cmp, swp);
	if (cmp(c, d) > 0) {
		swp(c, d);
		if (cmp(b, c) > 0) {
			swp(b, c);
			if (cmp(a, b) > 0) {
				swp(a, b);
			}
		}
	}
}