
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lineno; scalar_t__ extended_value; } ;
typedef TYPE_1__ zend_op ;


 int CG (int ) ;
 int MAKE_NOP (TYPE_1__*) ;
 int zend_lineno ;

__attribute__((used)) static void init_op(zend_op *op)
{
 MAKE_NOP(op);
 op->extended_value = 0;
 op->lineno = CG(zend_lineno);
}
