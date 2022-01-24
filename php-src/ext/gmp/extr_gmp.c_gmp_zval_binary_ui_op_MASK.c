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
typedef  int /*<<< orphan*/ * mpz_ptr ;
typedef  int /*<<< orphan*/  gmp_ulong ;
struct TYPE_6__ {scalar_t__ is_used; } ;
typedef  TYPE_1__ gmp_temp_t ;
typedef  int /*<<< orphan*/  (* gmp_binary_ui_op_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  (* gmp_binary_op_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  RETURN_FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC8(zval *return_value, zval *a_arg, zval *b_arg, gmp_binary_op_t gmp_op, gmp_binary_ui_op_t gmp_ui_op, int check_b_zero)
{
	mpz_ptr gmpnum_a, gmpnum_b, gmpnum_result;
	gmp_temp_t temp_a, temp_b;

	FUNC0(gmpnum_a, a_arg, temp_a);

	if (gmp_ui_op && FUNC5(b_arg) == IS_LONG && FUNC4(b_arg) >= 0) {
		gmpnum_b = NULL;
		temp_b.is_used = 0;
	} else {
		FUNC1(gmpnum_b, b_arg, temp_b, temp_a);
	}

	if (check_b_zero) {
		int b_is_zero = 0;
		if (!gmpnum_b) {
			b_is_zero = (FUNC4(b_arg) == 0);
		} else {
			b_is_zero = !FUNC6(gmpnum_b, 0);
		}

		if (b_is_zero) {
			FUNC7(NULL, E_WARNING, "Zero operand not allowed");
			FUNC2(temp_a);
			FUNC2(temp_b);
			RETURN_FALSE;
		}
	}

	FUNC3(gmpnum_result);

	if (!gmpnum_b) {
		gmp_ui_op(gmpnum_result, gmpnum_a, (gmp_ulong) FUNC4(b_arg));
	} else {
		gmp_op(gmpnum_result, gmpnum_a, gmpnum_b);
	}

	FUNC2(temp_a);
	FUNC2(temp_b);
}