
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int var; } ;
struct TYPE_6__ {int opcode; TYPE_1__ result; int extended_value; int op1_type; } ;
typedef TYPE_2__ zend_op ;


 int IS_CONST ;
 int IS_CV ;
 int MAKE_NOP (TYPE_2__*) ;
 int ZEND_CHECK_VAR ;




 int ZEND_FREE ;
__attribute__((used)) static void zend_delete_call_instructions(zend_op *opline)
{
 int call = 0;

 while (1) {
  switch (opline->opcode) {
   case 135:
   case 133:
   case 132:
   case 134:
   case 136:
    if (call == 0) {
     MAKE_NOP(opline);
     return;
    }

   case 130:
   case 137:
   case 131:
    call--;
    break;
   case 141:
   case 139:
   case 138:
   case 140:
    call++;
    break;
   case 129:
   case 128:
    if (call == 0) {
     if (opline->op1_type == IS_CONST) {
      MAKE_NOP(opline);
     } else if (opline->op1_type == IS_CV) {
      opline->opcode = ZEND_CHECK_VAR;
      opline->extended_value = 0;
      opline->result.var = 0;
     } else {
      opline->opcode = ZEND_FREE;
      opline->extended_value = 0;
      opline->result.var = 0;
     }
    }
    break;
  }
  opline--;
 }
}
