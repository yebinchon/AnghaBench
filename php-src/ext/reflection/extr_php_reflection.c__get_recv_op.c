
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int last; TYPE_3__* opcodes; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_6__ {scalar_t__ num; } ;
struct TYPE_8__ {scalar_t__ opcode; TYPE_1__ op1; } ;
typedef TYPE_3__ zend_op ;
typedef scalar_t__ uint32_t ;


 scalar_t__ ZEND_RECV ;
 scalar_t__ ZEND_RECV_INIT ;
 scalar_t__ ZEND_RECV_VARIADIC ;

__attribute__((used)) static zend_op* _get_recv_op(zend_op_array *op_array, uint32_t offset)
{
 zend_op *op = op_array->opcodes;
 zend_op *end = op + op_array->last;

 ++offset;
 while (op < end) {
  if ((op->opcode == ZEND_RECV || op->opcode == ZEND_RECV_INIT
      || op->opcode == ZEND_RECV_VARIADIC) && op->op1.num == offset)
  {
   return op;
  }
  ++op;
 }
 return ((void*)0);
}
