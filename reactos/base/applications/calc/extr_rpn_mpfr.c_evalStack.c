
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int calc_number_t ;
struct TYPE_14__ {int mf; } ;
struct TYPE_13__ {size_t operation; TYPE_5__ number; } ;
typedef TYPE_1__ calc_node_t ;
struct TYPE_15__ {unsigned int prec; } ;
struct TYPE_12__ {size_t prev_operator; scalar_t__ is_nan; int prev; } ;


 size_t RPN_OPERATOR_EQUAL ;
 size_t RPN_OPERATOR_PARENT ;
 size_t RPN_OPERATOR_PERCENT ;
 TYPE_11__ calc ;
 int flush_postfix () ;
 int is_stack_empty () ;
 int mpfr_clear (int ) ;
 int mpfr_init (int ) ;
 int node_copy (TYPE_1__*,TYPE_1__*) ;
 TYPE_8__* operator_list ;
 TYPE_1__* pop () ;
 int push (TYPE_1__*) ;
 int rpn_copy (int *,TYPE_5__*) ;
 int run_operator (TYPE_1__*,TYPE_1__*,TYPE_1__*,size_t) ;

__attribute__((used)) static void evalStack(calc_number_t *number)
{
    calc_node_t *op, ip;
    unsigned int prec;

    mpfr_init(ip.number.mf);
    op = pop();
    node_copy(&ip, op);
    prec = operator_list[ip.operation].prec;
    while (!is_stack_empty()) {
        op = pop();

        if (prec <= operator_list[op->operation].prec) {
            if (op->operation == RPN_OPERATOR_PARENT) continue;

            rpn_copy(&calc.prev, &ip.number);
            run_operator(&ip, op, &ip, op->operation);
            if (calc.is_nan) {
                flush_postfix();
                mpfr_clear(ip.number.mf);
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

    rpn_copy(number, &ip.number);
    mpfr_clear(ip.number.mf);
}
