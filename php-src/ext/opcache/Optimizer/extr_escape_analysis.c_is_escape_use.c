
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int op1_use; size_t op1_def; int op2_use; int result_use; } ;
typedef TYPE_2__ zend_ssa_op ;
struct TYPE_10__ {TYPE_1__* vars; TYPE_2__* ops; } ;
typedef TYPE_3__ zend_ssa ;
struct TYPE_11__ {TYPE_5__* opcodes; } ;
typedef TYPE_4__ zend_op_array ;
struct TYPE_12__ {int opcode; int extended_value; int result_type; int op2_type; int op1_type; } ;
typedef TYPE_5__ zend_op ;
struct TYPE_8__ {int alias; } ;


 int IS_CV ;
 int IS_UNUSED ;
 int MAY_BE_OBJECT ;
 int MAY_BE_REF ;
 int OP1_INFO () ;
 int OP2_INFO () ;

 int ZEND_ARRAY_ELEMENT_REF ;
__attribute__((used)) static int is_escape_use(zend_op_array *op_array, zend_ssa *ssa, int use, int var)
{
 zend_ssa_op *op = ssa->ops + use;
 zend_op *opline = op_array->opcodes + use;

 if (op->op1_use == var) {
  switch (opline->opcode) {
   case 148:

    break;
   case 128:
    if (opline->op1_type == IS_CV) {
     if (OP1_INFO() & MAY_BE_OBJECT) {

      return 1;
     }
    }
    break;
   case 135:
   case 134:
   case 139:
   case 137:
   case 140:
   case 138:
    break;
   case 142:
    return 1;
   case 146:
   case 144:
   case 141:
   case 147:
   case 145:
   case 143:
    break;
   case 129:
   case 130:
   case 131:
   case 132:
    break;
   case 136:
   case 149:
    if (opline->extended_value & ZEND_ARRAY_ELEMENT_REF) {
     return 1;
    }
    if (OP1_INFO() & MAY_BE_OBJECT) {

     return 1;
    }

    break;
   case 133:
    if ((opline-1)->opcode != 147
     && (opline-1)->opcode != 145) {
     return 1;
    }
    if (OP1_INFO() & MAY_BE_OBJECT) {

     return 1;
    }
    opline--;
    op--;
    if (opline->op1_type != IS_CV
     || (OP1_INFO() & MAY_BE_REF)
     || (op->op1_def >= 0 && ssa->vars[op->op1_def].alias)) {

     return 1;
    }

    break;
   default:
    return 1;
  }
 }

 if (op->op2_use == var) {
  switch (opline->opcode) {
   case 148:
    if (opline->op1_type != IS_CV
     || (OP1_INFO() & MAY_BE_REF)
     || (op->op1_def >= 0 && ssa->vars[op->op1_def].alias)) {

     return 1;
    }
    if (opline->op2_type == IS_CV || opline->result_type != IS_UNUSED) {
     if (OP2_INFO() & MAY_BE_OBJECT) {

      return 1;
     }
    }
    break;
   default:
    return 1;
  }
 }

 if (op->result_use == var) {
  switch (opline->opcode) {
   case 148:
   case 128:
   case 136:
   case 149:
    break;
   default:
    return 1;
  }
 }

 return 0;
}
