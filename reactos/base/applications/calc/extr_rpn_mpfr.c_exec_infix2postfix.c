
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_6__ {int mf; } ;
struct TYPE_5__ {unsigned int operation; TYPE_2__ number; } ;
typedef TYPE_1__ calc_node_t ;
struct TYPE_7__ {unsigned int last_operator; scalar_t__ sci_in; } ;


 unsigned int RPN_OPERATOR_EQUAL ;
 unsigned int RPN_OPERATOR_NONE ;
 unsigned int RPN_OPERATOR_PARENT ;
 unsigned int RPN_OPERATOR_PERCENT ;
 int TRUE ;
 TYPE_4__ calc ;
 int evalStack (int *) ;
 scalar_t__ is_stack_empty () ;
 int mpfr_clear (int ) ;
 int mpfr_init (int ) ;
 int percent_mode ;
 int push (TYPE_1__*) ;
 int rpn_copy (TYPE_2__*,int *) ;

int exec_infix2postfix(calc_number_t *number, unsigned int func)
{
    calc_node_t tmp;

    if (is_stack_empty() && func == RPN_OPERATOR_EQUAL) {


        if (calc.sci_in)
            return 1;
        return 0;
    }

    if (func == RPN_OPERATOR_PERCENT)
        percent_mode = TRUE;

    mpfr_init(tmp.number.mf);
    rpn_copy(&tmp.number, number);
    tmp.operation = func;

    push(&tmp);
    mpfr_clear(tmp.number.mf);

    if (func == RPN_OPERATOR_NONE)
        return 0;

    if (func != RPN_OPERATOR_PARENT) {
        calc.last_operator = func;
        evalStack(number);
    }
    return 1;
}
