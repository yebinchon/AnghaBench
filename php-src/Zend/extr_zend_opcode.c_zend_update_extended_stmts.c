
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last; TYPE_2__* opcodes; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_5__ {scalar_t__ opcode; int lineno; } ;
typedef TYPE_2__ zend_op ;


 scalar_t__ ZEND_EXT_STMT ;
 void* ZEND_NOP ;

__attribute__((used)) static void zend_update_extended_stmts(zend_op_array *op_array)
{
 zend_op *opline = op_array->opcodes, *end=opline+op_array->last;

 while (opline<end) {
  if (opline->opcode == ZEND_EXT_STMT) {
   if (opline+1<end) {
    if ((opline+1)->opcode == ZEND_EXT_STMT) {
     opline->opcode = ZEND_NOP;
     opline++;
     continue;
    }
    if (opline+1<end) {
     opline->lineno = (opline+1)->lineno;
    }
   } else {
    opline->opcode = ZEND_NOP;
   }
  }
  opline++;
 }
}
