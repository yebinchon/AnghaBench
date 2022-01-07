
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
struct TYPE_12__ {int opcode; int op1; int op1_type; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_13__ {int ce_flags; int __set; int __get; int destructor; int constructor; int create_object; } ;
typedef TYPE_5__ zend_class_entry ;


 int CRT_CONSTANT (int ) ;
 int IS_CONST ;
 int ZEND_ACC_INHERITED ;
 int Z_STR_P (int ) ;
 TYPE_5__* get_class_entry (int const*,int ) ;

__attribute__((used)) static int is_local_def(zend_op_array *op_array, zend_ssa *ssa, int def, int var, const zend_script *script)
{
 zend_ssa_op *op = ssa->ops + def;
 zend_op *opline = op_array->opcodes + def;

 if (op->result_def == var) {
  switch (opline->opcode) {
   case 134:
   case 141:
   case 128:
   case 140:
    return 1;
   case 133:

    if (opline->op1_type == IS_CONST) {
     zend_class_entry *ce = get_class_entry(script, Z_STR_P(CRT_CONSTANT(opline->op1)+1));
     if (ce && !ce->create_object && !ce->constructor &&
         !ce->destructor && !ce->__get && !ce->__set &&
         !(ce->ce_flags & ZEND_ACC_INHERITED)) {
      return 1;
     }
    }
    break;
  }
 } else if (op->op1_def == var) {
  switch (opline->opcode) {
   case 140:
   case 139:
   case 137:
   case 135:
   case 138:
   case 136:
   case 129:
   case 130:
   case 131:
   case 132:
    return 1;
  }
 }

 return 0;
}
