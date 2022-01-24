#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_constant ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_NO_FILE_CACHE ; 
 int CONST_PERSISTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZEND_COMPILE_WITH_FILE_CACHE ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compiler_options ; 
 int /*<<< orphan*/  zend_constants ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(zend_string *name, zval *result, int copy)
{
	zval *zv;
	zend_constant *c = FUNC8(FUNC1(zend_constants), name);
	if (c) {
		if ((FUNC2(c) & CONST_PERSISTENT)
		 && (!(FUNC2(c) & CONST_NO_FILE_CACHE)
		  || !(FUNC0(compiler_options) & ZEND_COMPILE_WITH_FILE_CACHE))) {
			FUNC5(result, &c->value);
			if (copy) {
				FUNC6(result);
			}
			return 1;
		} else {
			return 0;
		}
	}

	/* Special constants null/true/false can always be substituted. */
	zv = FUNC7(FUNC4(name), FUNC3(name));
	if (zv) {
		FUNC5(result, zv);
		return 1;
	}
	return 0;
}