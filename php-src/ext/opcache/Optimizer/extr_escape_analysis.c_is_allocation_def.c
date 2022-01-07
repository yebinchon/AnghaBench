
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int result_def; int op1_def; } ;
typedef TYPE_1__ zend_ssa_op ;
struct TYPE_10__ {TYPE_1__* ops; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_script ;
struct TYPE_11__ {TYPE_4__* opcodes; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_12__ {int opcode; int op2_type; int op2; int op1_type; int op1; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_13__ {int ce_flags; int __set; int __get; int destructor; int constructor; int create_object; } ;
typedef TYPE_5__ zend_class_entry ;
typedef int uint32_t ;


 int CRT_CONSTANT (int ) ;
 int IS_ARRAY ;
 int IS_CONST ;
 int IS_CV ;
 int MAY_BE_ARRAY ;
 int MAY_BE_FALSE ;
 int MAY_BE_NULL ;
 int MAY_BE_UNDEF ;
 int OP1_INFO () ;
 int OP2_INFO () ;
 int ZEND_ACC_CONSTANTS_UPDATED ;
 int ZEND_ACC_EXPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_INHERITED ;
 int ZEND_ACC_INTERFACE ;
 int ZEND_ACC_TRAIT ;







 int Z_STR_P (int ) ;
 int Z_TYPE_P (int ) ;
 TYPE_5__* get_class_entry (int const*,int ) ;

__attribute__((used)) static int is_allocation_def(zend_op_array *op_array, zend_ssa *ssa, int def, int var, const zend_script *script)
{
 zend_ssa_op *op = ssa->ops + def;
 zend_op *opline = op_array->opcodes + def;

 if (op->result_def == var) {
  switch (opline->opcode) {
   case 130:
    return 1;
   case 129:

    if (opline->op1_type == IS_CONST) {
     zend_class_entry *ce = get_class_entry(script, Z_STR_P(CRT_CONSTANT(opline->op1)+1));
     uint32_t forbidden_flags = ZEND_ACC_INHERITED

      | ZEND_ACC_IMPLICIT_ABSTRACT_CLASS | ZEND_ACC_EXPLICIT_ABSTRACT_CLASS
      | ZEND_ACC_INTERFACE | ZEND_ACC_TRAIT;
     if (ce && !ce->create_object && !ce->constructor &&
         !ce->destructor && !ce->__get && !ce->__set &&
         !(ce->ce_flags & forbidden_flags) &&
      (ce->ce_flags & ZEND_ACC_CONSTANTS_UPDATED)) {
      return 1;
     }
    }
    break;
   case 128:
    if (opline->op1_type == IS_CONST
     && Z_TYPE_P(CRT_CONSTANT(opline->op1)) == IS_ARRAY) {
     return 1;
    }
    if (opline->op1_type == IS_CV && (OP1_INFO() & MAY_BE_ARRAY)) {
     return 1;
    }
    break;
   case 134:
    if (opline->op1_type == IS_CV && (OP1_INFO() & MAY_BE_ARRAY)) {
     return 1;
    }
    break;
  }
    } else if (op->op1_def == var) {
  switch (opline->opcode) {
   case 134:
    if (opline->op2_type == IS_CONST
     && Z_TYPE_P(CRT_CONSTANT(opline->op2)) == IS_ARRAY) {
     return 1;
    }
    if (opline->op2_type == IS_CV && (OP2_INFO() & MAY_BE_ARRAY)) {
     return 1;
    }
    break;
   case 133:
   case 132:
   case 131:
    if (OP1_INFO() & (MAY_BE_UNDEF | MAY_BE_NULL | MAY_BE_FALSE)) {

     return 1;
    }
    break;
  }
 }

    return 0;
}
