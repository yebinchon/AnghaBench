#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  mpz_ptr ;
struct TYPE_6__ {scalar_t__ is_used; } ;
typedef  TYPE_1__ gmp_temp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(zval *return_value, zval *a_arg, zval *b_arg) /* {{{ */
{
	mpz_ptr gmpnum_a, gmpnum_b;
	gmp_temp_t temp_a, temp_b;
	zend_bool use_si = 0;
	zend_long res;

	FUNC0(gmpnum_a, a_arg, temp_a);

	if (FUNC5(b_arg) == IS_LONG) {
		use_si = 1;
		temp_b.is_used = 0;
	} else {
		FUNC1(gmpnum_b, b_arg, temp_b, temp_a);
	}

	if (use_si) {
		res = FUNC7(gmpnum_a, FUNC4(b_arg));
	} else {
		res = FUNC6(gmpnum_a, gmpnum_b);
	}

	FUNC2(temp_a);
	FUNC2(temp_b);

	FUNC3(res);
}