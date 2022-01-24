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
typedef  scalar_t__ zend_long ;
typedef  int /*<<< orphan*/  mpz_ptr ;
typedef  int /*<<< orphan*/  gmp_ulong ;
typedef  int /*<<< orphan*/  gmp_temp_t ;
typedef  int /*<<< orphan*/  (* gmp_binary_ui_op_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETVAL_FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(gmp_binary_ui_op_t op, zval *return_value, zval *op1, zval *op2) {
	zend_long shift = FUNC4(op2);

	if (shift < 0) {
		FUNC3(NULL, E_WARNING, "Shift cannot be negative");
		RETVAL_FALSE;
	} else {
		mpz_ptr gmpnum_op, gmpnum_result;
		gmp_temp_t temp;

		FUNC0(gmpnum_op, op1, temp);
		FUNC2(gmpnum_result);
		op(gmpnum_result, gmpnum_op, (gmp_ulong) shift);
		FUNC1(temp);
	}
}