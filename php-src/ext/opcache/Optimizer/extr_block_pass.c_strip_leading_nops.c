
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* opcodes; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_7__ {scalar_t__ opcode; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_8__ {scalar_t__ len; size_t start; } ;
typedef TYPE_3__ zend_basic_block ;


 scalar_t__ ZEND_NOP ;

__attribute__((used)) static void strip_leading_nops(zend_op_array *op_array, zend_basic_block *b)
{
 zend_op *opcodes = op_array->opcodes;

 do {
  b->start++;
  b->len--;
 } while (b->len > 0 && opcodes[b->start].opcode == ZEND_NOP);
}
