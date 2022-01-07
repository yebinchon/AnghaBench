
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
 int isgreaterequal (int ,int ) ;

calculated_number eval_greater_than_or_equal(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    calculated_number n1 = eval_value(exp, &op->ops[0], error);
    calculated_number n2 = eval_value(exp, &op->ops[1], error);
    return isgreaterequal(n1, n2);
}
