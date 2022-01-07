
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_7__ {scalar_t__ operation; int number; int base; } ;
typedef TYPE_1__ calc_node_t ;
struct TYPE_8__ {scalar_t__ is_nan; int base; } ;


 scalar_t__ RPN_OPERATOR_PARENT ;
 TYPE_6__ calc ;
 int flush_postfix () ;
 int is_stack_empty () ;
 TYPE_1__* pop () ;
 int run_operator (TYPE_1__*,TYPE_1__*,TYPE_1__*,scalar_t__) ;

void exec_closeparent(calc_number_t *number)
{
    calc_node_t *op, ip;

    ip.number = *number;
    ip.base = calc.base;
    while (!is_stack_empty()) {
        op = pop();

        if (op->operation == RPN_OPERATOR_PARENT)
            break;

        run_operator(&ip, op, &ip, op->operation);
        if (calc.is_nan) {
            flush_postfix();
            return;
        }
    }
    *number = ip.number;
}
