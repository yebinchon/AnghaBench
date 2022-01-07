
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ operation; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
typedef TYPE_2__ stack_node_t ;


 scalar_t__ RPN_OPERATOR_EQUAL ;
 scalar_t__ RPN_OPERATOR_PARENT ;
 scalar_t__ RPN_OPERATOR_PERCENT ;
 int pop () ;
 TYPE_2__* stack ;

void exec_change_infix(void)
{
    stack_node_t *op = stack;

    if (op == ((void*)0))
        return;
    if (op->node.operation == RPN_OPERATOR_PARENT ||
        op->node.operation == RPN_OPERATOR_PERCENT ||
        op->node.operation == RPN_OPERATOR_EQUAL)
        return;

    pop();
}
