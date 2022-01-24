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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline int FUNC2(atomic_t *lock, int try_once) /* {{{ */
{
	if (try_once) {
		return FUNC0(lock, 0, 1) ? 1 : 0;
	}

	for (;;) {

		if (FUNC0(lock, 0, 1)) {
			break;
		}

		FUNC1();
	}

	return 1;
}