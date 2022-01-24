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
typedef  int zend_uchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int SUCCESS ; 
#define  ZEND_ADD 139 
#define  ZEND_BW_AND 138 
#define  ZEND_BW_NOT 137 
#define  ZEND_BW_OR 136 
#define  ZEND_BW_XOR 135 
#define  ZEND_DIV 134 
#define  ZEND_MOD 133 
#define  ZEND_MUL 132 
#define  ZEND_POW 131 
#define  ZEND_SL 130 
#define  ZEND_SR 129 
#define  ZEND_SUB 128 
 int /*<<< orphan*/  mpz_add ; 
 int /*<<< orphan*/  mpz_and ; 
 int /*<<< orphan*/  mpz_com ; 
 int /*<<< orphan*/  mpz_fdiv_q_2exp ; 
 int /*<<< orphan*/  mpz_ior ; 
 int /*<<< orphan*/  mpz_mod ; 
 int /*<<< orphan*/  mpz_mod_ui ; 
 int /*<<< orphan*/  mpz_mul ; 
 int /*<<< orphan*/  mpz_mul_2exp ; 
 int /*<<< orphan*/  mpz_pow_ui ; 
 int /*<<< orphan*/  mpz_sub ; 
 int /*<<< orphan*/  mpz_tdiv_q ; 
 int /*<<< orphan*/  mpz_tdiv_q_ui ; 
 int /*<<< orphan*/  mpz_xor ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zend_uchar opcode, zval *result, zval *op1, zval *op2) /* {{{ */
{
	switch (opcode) {
	case ZEND_ADD:
		FUNC1(mpz_add);
	case ZEND_SUB:
		FUNC1(mpz_sub);
	case ZEND_MUL:
		FUNC1(mpz_mul);
	case ZEND_POW:
		FUNC4(mpz_pow_ui, result, op1, op2);
		return SUCCESS;
	case ZEND_DIV:
		FUNC2(mpz_tdiv_q, mpz_tdiv_q_ui, 1);
	case ZEND_MOD:
		FUNC2(mpz_mod, mpz_mod_ui, 1);
	case ZEND_SL:
		FUNC4(mpz_mul_2exp, result, op1, op2);
		return SUCCESS;
	case ZEND_SR:
		FUNC4(mpz_fdiv_q_2exp, result, op1, op2);
		return SUCCESS;
	case ZEND_BW_OR:
		FUNC0(mpz_ior);
	case ZEND_BW_AND:
		FUNC0(mpz_and);
	case ZEND_BW_XOR:
		FUNC0(mpz_xor);
	case ZEND_BW_NOT:
		FUNC3(mpz_com);

	default:
		return FAILURE;
	}
}