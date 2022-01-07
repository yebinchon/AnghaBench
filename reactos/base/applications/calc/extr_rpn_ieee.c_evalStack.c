
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_9__ {size_t operation; int number; } ;
typedef TYPE_1__ calc_node_t ;
struct TYPE_11__ {size_t prev_operator; scalar_t__ is_nan; int prev; } ;
struct TYPE_10__ {unsigned int prec; } ;


 size_t RPN_OPERATOR_EQUAL ;
 size_t RPN_OPERATOR_PARENT ;
 size_t RPN_OPERATOR_PERCENT ;
 TYPE_8__ calc ;
 int flush_postfix () ;
 int is_stack_empty () ;
 TYPE_7__* operator_list ;
 TYPE_1__* pop () ;
 int push (TYPE_1__*) ;
 int run_operator (TYPE_1__*,TYPE_1__*,TYPE_1__*,size_t) ;

__attribute__((used)) static void evalStack(calc_number_t *number)
{
    calc_node_t *op, ip;
    unsigned int prec;

    op = pop();
    ip = *op;
    prec = operator_list[ip.operation].prec;
    while (!is_stack_empty()) {
        op = pop();

        if (prec <= operator_list[op->operation].prec) {
            if (op->operation == RPN_OPERATOR_PARENT) continue;

            calc.prev = ip.number;
            run_operator(&ip, op, &ip, op->operation);
            if (calc.is_nan) {
                flush_postfix();
                return;
            }
        } else {
            push(op);
            break;
        }
    }

    if (ip.operation != RPN_OPERATOR_EQUAL && ip.operation != RPN_OPERATOR_PERCENT)
        push(&ip);

    calc.prev_operator = op->operation;

    *number = ip.number;
}
