
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_3__ {int * ops; } ;
typedef TYPE_1__ EVAL_NODE ;
typedef int EVAL_EXPRESSION ;


 int eval_value (int *,int *,int*) ;
 scalar_t__ is_true (int ) ;

calculated_number eval_if_then_else(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    if(is_true(eval_value(exp, &op->ops[0], error)))
        return eval_value(exp, &op->ops[1], error);
    else
        return eval_value(exp, &op->ops[2], error);
}
