
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_6__ {scalar_t__ parameters; int (* eval ) (int *,TYPE_1__*,int*) ;} ;
struct TYPE_5__ {scalar_t__ count; size_t operator; } ;
typedef TYPE_1__ EVAL_NODE ;
typedef int EVAL_EXPRESSION ;


 int EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS ;
 TYPE_3__* operators ;
 int stub1 (int *,TYPE_1__*,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline calculated_number eval_node(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    if(unlikely(op->count != operators[op->operator].parameters)) {
        *error = EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS;
        return 0;
    }

    calculated_number n = operators[op->operator].eval(exp, op, error);

    return n;
}
