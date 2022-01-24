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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(zval *result, zval *op) {
	if (FUNC0(op)) {
		if (FUNC4(FUNC3(op)) == 0) {
			/* An empty partial array may be non-empty at runtime, we don't know whether the
			 * result will be true or false. */
			return FAILURE;
		}

		FUNC2(result);
		return SUCCESS;
	}

	FUNC1(result, FUNC5(op));
	return SUCCESS;
}