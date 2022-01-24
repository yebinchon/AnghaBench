#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int /*<<< orphan*/ * pos; int /*<<< orphan*/ ** ht; } ;
typedef  TYPE_1__ phpdbg_intersect_ptr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(phpdbg_intersect_ptr *info, zval **ptr) {
	int ret;
	zval *zvp[2];
	int invalid = !info->ht[0] + !info->ht[1];

	if (invalid > 0) {
		invalid = !info->ht[0];

		if (!(*ptr = FUNC1(info->ht[invalid], &info->pos[invalid]))) {
			return 0;
		}

		FUNC2(info->ht[invalid], &info->pos[invalid]);

		return invalid ? 1 : -1;
	}

	if (!(zvp[0] = FUNC1(info->ht[0], &info->pos[0]))) {
		info->ht[0] = NULL;
		return FUNC3(info, ptr);
	}
	if (!(zvp[1] = FUNC1(info->ht[1], &info->pos[1]))) {
		info->ht[1] = NULL;
		return FUNC3(info, ptr);
	}

	ret = FUNC0(zvp[0], zvp[1]);

	if (ret <= 0) {
		*ptr = zvp[0];
		FUNC2(info->ht[0], &info->pos[0]);
	}
	if (ret >= 0) {
		*ptr = zvp[1];
		FUNC2(info->ht[1], &info->pos[1]);
	}

	return ret;
}