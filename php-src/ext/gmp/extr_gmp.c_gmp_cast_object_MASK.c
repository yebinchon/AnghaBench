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
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  mpz_ptr ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int FAILURE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  IS_DOUBLE 131 
#define  IS_LONG 130 
#define  IS_STRING 129 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  _IS_NUMBER 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(zend_object *readobj, zval *writeobj, int type) /* {{{ */
{
	mpz_ptr gmpnum;
	switch (type) {
	case IS_STRING:
		gmpnum = FUNC0(readobj)->num;
		FUNC3(writeobj, gmpnum, 10);
		return SUCCESS;
	case IS_LONG:
		gmpnum = FUNC0(readobj)->num;
		FUNC2(writeobj, FUNC6(gmpnum));
		return SUCCESS;
	case IS_DOUBLE:
		gmpnum = FUNC0(readobj)->num;
		FUNC1(writeobj, FUNC5(gmpnum));
		return SUCCESS;
	case _IS_NUMBER:
		gmpnum = FUNC0(readobj)->num;
		if (FUNC4(gmpnum)) {
			FUNC2(writeobj, FUNC6(gmpnum));
		} else {
			FUNC1(writeobj, FUNC5(gmpnum));
		}
		return SUCCESS;
	default:
		return FAILURE;
	}
}