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
typedef  scalar_t__ ut8 ;
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3 (RBuffer *b, ut64 max, ut8 eoc, void *out) {
	if (!b || max >= FUNC1 (b) || FUNC2 (b) > max) {
		return 0;
	}
	size_t res = 0;
	ut8 cur = FUNC0 (b);
	while (FUNC2 (b) <= max && cur != eoc) {
		cur = FUNC0 (b);
		res++;
	}
	if (cur != eoc) {
		return 0;
	}
	return res + 1;
}