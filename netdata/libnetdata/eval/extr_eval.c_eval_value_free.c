
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int variable; int expression; } ;
typedef TYPE_1__ EVAL_VALUE ;




 int eval_node_free (int ) ;
 int eval_variable_free (int ) ;

__attribute__((used)) static inline void eval_value_free(EVAL_VALUE *v) {
    switch(v->type) {
        case 129:
            eval_node_free(v->expression);
            break;

        case 128:
            eval_variable_free(v->variable);
            break;

        default:
            break;
    }
}
