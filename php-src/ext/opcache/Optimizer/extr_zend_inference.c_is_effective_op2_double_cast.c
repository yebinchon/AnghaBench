
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ opcode; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_bool ;


 scalar_t__ ZEND_ADD ;
 scalar_t__ ZEND_MUL ;
 scalar_t__ ZEND_SUB ;
 int Z_LVAL_P (int *) ;

__attribute__((used)) static zend_bool is_effective_op2_double_cast(zend_op *opline, zval *op1) {


 return (opline->opcode == ZEND_ADD && Z_LVAL_P(op1) == 0)
  || (opline->opcode == ZEND_SUB && Z_LVAL_P(op1) == 0)
  || (opline->opcode == ZEND_MUL && Z_LVAL_P(op1) == 1);
}
