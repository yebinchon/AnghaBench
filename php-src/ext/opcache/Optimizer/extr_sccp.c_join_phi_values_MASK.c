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
typedef  scalar_t__ zend_bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(zval *a, zval *b, zend_bool escape) {
	if (FUNC0(a) || FUNC3(b)) {
		return;
	}
	if (FUNC3(a)) {
		FUNC9(a);
		FUNC5(a, b);
		return;
	}
	if (FUNC0(b)) {
		FUNC9(a);
		FUNC4(a);
		return;
	}
	if (FUNC1(a) || FUNC1(b)) {
		if (FUNC6(a, b) != SUCCESS) {
			FUNC9(a);
			FUNC4(a);
		}
	} else if (FUNC2(a) || FUNC2(b)) {
		if (escape || FUNC7(a, b) != SUCCESS) {
			FUNC9(a);
			FUNC4(a);
		}
	} else if (!FUNC8(a, b)) {
		if (FUNC6(a, b) != SUCCESS) {
			FUNC9(a);
			FUNC4(a);
		}
	}
}