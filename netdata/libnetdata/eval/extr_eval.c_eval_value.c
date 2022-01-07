
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_3__ {int type; int variable; int number; int expression; } ;
typedef TYPE_1__ EVAL_VALUE ;
typedef int EVAL_EXPRESSION ;


 int EVAL_ERROR_INVALID_VALUE ;



 int eval_node (int *,int ,int*) ;
 int eval_variable (int *,int ,int*) ;

__attribute__((used)) static inline calculated_number eval_value(EVAL_EXPRESSION *exp, EVAL_VALUE *v, int *error) {
    calculated_number n;

    switch(v->type) {
        case 130:
            n = eval_node(exp, v->expression, error);
            break;

        case 129:
            n = v->number;
            break;

        case 128:
            n = eval_variable(exp, v->variable, error);
            break;

        default:
            *error = EVAL_ERROR_INVALID_VALUE;
            n = 0;
            break;
    }

    return n;
}
