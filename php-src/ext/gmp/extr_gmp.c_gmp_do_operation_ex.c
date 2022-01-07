
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_uchar ;


 int DO_BINARY_OP (int ) ;
 int DO_BINARY_UI_OP (int ) ;
 int DO_BINARY_UI_OP_EX (int ,int ,int) ;
 int DO_UNARY_OP (int ) ;
 int FAILURE ;
 int SUCCESS ;
 int mpz_add ;
 int mpz_and ;
 int mpz_com ;
 int mpz_fdiv_q_2exp ;
 int mpz_ior ;
 int mpz_mod ;
 int mpz_mod_ui ;
 int mpz_mul ;
 int mpz_mul_2exp ;
 int mpz_pow_ui ;
 int mpz_sub ;
 int mpz_tdiv_q ;
 int mpz_tdiv_q_ui ;
 int mpz_xor ;
 int shift_operator_helper (int ,int *,int *,int *) ;

__attribute__((used)) static int gmp_do_operation_ex(zend_uchar opcode, zval *result, zval *op1, zval *op2)
{
 switch (opcode) {
 case 139:
  DO_BINARY_UI_OP(mpz_add);
 case 128:
  DO_BINARY_UI_OP(mpz_sub);
 case 132:
  DO_BINARY_UI_OP(mpz_mul);
 case 131:
  shift_operator_helper(mpz_pow_ui, result, op1, op2);
  return SUCCESS;
 case 134:
  DO_BINARY_UI_OP_EX(mpz_tdiv_q, mpz_tdiv_q_ui, 1);
 case 133:
  DO_BINARY_UI_OP_EX(mpz_mod, mpz_mod_ui, 1);
 case 130:
  shift_operator_helper(mpz_mul_2exp, result, op1, op2);
  return SUCCESS;
 case 129:
  shift_operator_helper(mpz_fdiv_q_2exp, result, op1, op2);
  return SUCCESS;
 case 136:
  DO_BINARY_OP(mpz_ior);
 case 138:
  DO_BINARY_OP(mpz_and);
 case 135:
  DO_BINARY_OP(mpz_xor);
 case 137:
  DO_UNARY_OP(mpz_com);

 default:
  return FAILURE;
 }
}
