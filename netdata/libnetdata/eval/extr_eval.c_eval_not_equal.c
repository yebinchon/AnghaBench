
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calculated_number ;
typedef int EVAL_NODE ;
typedef int EVAL_EXPRESSION ;


 int eval_equal (int *,int *,int*) ;

calculated_number eval_not_equal(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    return !eval_equal(exp, op, error);
}
