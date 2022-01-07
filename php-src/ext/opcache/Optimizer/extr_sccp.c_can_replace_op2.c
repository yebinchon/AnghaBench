
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_ssa_op ;
typedef int zend_op_array ;
struct TYPE_3__ {int opcode; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_bool ;







__attribute__((used)) static zend_bool can_replace_op2(
  const zend_op_array *op_array, zend_op *opline, zend_ssa_op *ssa_op) {
 switch (opline->opcode) {

  case 130:
  case 131:
  case 129:
  case 128:
   return 0;
 }
 return 1;
}
