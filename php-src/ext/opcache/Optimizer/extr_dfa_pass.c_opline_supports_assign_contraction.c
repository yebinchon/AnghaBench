
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* var_info; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_10__ {scalar_t__ var; } ;
struct TYPE_9__ {scalar_t__ var; } ;
struct TYPE_12__ {scalar_t__ opcode; scalar_t__ op1_type; scalar_t__ op2_type; scalar_t__ extended_value; TYPE_3__ op1; TYPE_2__ op2; } ;
typedef TYPE_5__ zend_op ;
typedef int zend_bool ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ type; } ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_CV ;
 scalar_t__ IS_OBJECT ;
 scalar_t__ MAY_BE_ANY ;
 scalar_t__ MAY_BE_DOUBLE ;
 scalar_t__ MAY_BE_FALSE ;
 scalar_t__ MAY_BE_LONG ;
 scalar_t__ MAY_BE_NULL ;
 scalar_t__ MAY_BE_TRUE ;
 scalar_t__ ZEND_CAST ;
 scalar_t__ ZEND_DO_FCALL ;
 scalar_t__ ZEND_DO_FCALL_BY_NAME ;
 scalar_t__ ZEND_DO_ICALL ;
 scalar_t__ ZEND_DO_UCALL ;
 scalar_t__ ZEND_INIT_ARRAY ;
 scalar_t__ ZEND_NEW ;
 scalar_t__ ZEND_POST_DEC ;
 scalar_t__ ZEND_POST_INC ;

__attribute__((used)) static zend_bool opline_supports_assign_contraction(
  zend_ssa *ssa, zend_op *opline, int src_var, uint32_t cv_var) {
 if (opline->opcode == ZEND_NEW) {

  return 0;
 }

 if (opline->opcode == ZEND_DO_ICALL || opline->opcode == ZEND_DO_UCALL
   || opline->opcode == ZEND_DO_FCALL || opline->opcode == ZEND_DO_FCALL_BY_NAME) {


  uint32_t type = ssa->var_info[src_var].type;
  uint32_t simple = MAY_BE_NULL|MAY_BE_FALSE|MAY_BE_TRUE|MAY_BE_LONG|MAY_BE_DOUBLE;
  return !((type & MAY_BE_ANY) & ~simple);
 }

 if (opline->opcode == ZEND_POST_INC || opline->opcode == ZEND_POST_DEC) {


  return opline->op1_type != IS_CV || opline->op1.var != cv_var;
 }

 if (opline->opcode == ZEND_INIT_ARRAY) {

  return (opline->op1_type != IS_CV || opline->op1.var != cv_var)
   && (opline->op2_type != IS_CV || opline->op2.var != cv_var);
 }

 if (opline->opcode == ZEND_CAST
   && (opline->extended_value == IS_ARRAY || opline->extended_value == IS_OBJECT)) {


  return opline->op1_type != IS_CV || opline->op1.var != cv_var;
 }

 return 1;
}
