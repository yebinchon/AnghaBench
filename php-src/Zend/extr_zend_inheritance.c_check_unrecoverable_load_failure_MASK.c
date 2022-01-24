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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int ce_flags; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int ZEND_ACC_HAS_UNLINKED_USES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(zend_class_entry *ce) {
	/* If this class has been used while unlinked through a variance obligation, it is not legal
	 * to remove the class from the class table and throw an exception, because there is already
	 * a dependence on the inheritance hierarchy of this specific class. Instead we fall back to
	 * a fatal error, as would happen if we did not allow exceptions in the first place. */
	if (ce->ce_flags & ZEND_ACC_HAS_UNLINKED_USES) {
		zend_string *exception_str;
		zval exception_zv;
		FUNC1(FUNC0(exception) && "Exception must have been thrown");
		FUNC3(&exception_zv, FUNC0(exception));
		FUNC4(exception_zv);
		FUNC5();
		exception_str = FUNC7(&exception_zv);
		FUNC6(E_ERROR,
			"During inheritance of %s with variance dependencies: Uncaught %s", FUNC2(ce->name), FUNC2(exception_str));
	}
}