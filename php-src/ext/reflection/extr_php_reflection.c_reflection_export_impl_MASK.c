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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_bool ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  RETURN_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(zval *return_value, zval *object, zend_bool return_output) {
	zval fname, retval;
	int result;

	/* Invoke the __toString() method */
	FUNC2(&fname, "__tostring", sizeof("__tostring") - 1);
	result = FUNC6(NULL, object, &fname, &retval, 0, NULL);
	FUNC11(&fname);

	if (result == FAILURE) {
		FUNC5("Invocation of method __toString() failed");
		return;
	}

	if (FUNC4(retval) == IS_UNDEF) {
		FUNC7(NULL, E_WARNING, "%s::__toString() did not return anything", FUNC0(FUNC3(object)->name));
		RETURN_FALSE;
	}

	if (return_output) {
		FUNC1(return_value, &retval);
	} else {
		/* No need for _r variant, return of __toString should always be a string */
		FUNC8(&retval, 0);
		FUNC9("\n");
		FUNC10(&retval);
	}
}