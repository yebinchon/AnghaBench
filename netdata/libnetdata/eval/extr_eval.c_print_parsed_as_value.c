
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int variable; int number; int expression; } ;
typedef TYPE_1__ EVAL_VALUE ;
typedef int BUFFER ;


 int EVAL_ERROR_INVALID_VALUE ;



 int print_parsed_as_constant (int *,int ) ;
 int print_parsed_as_node (int *,int ,int*) ;
 int print_parsed_as_variable (int *,int ,int*) ;

__attribute__((used)) static inline void print_parsed_as_value(BUFFER *out, EVAL_VALUE *v, int *error) {
    switch(v->type) {
        case 130:
            print_parsed_as_node(out, v->expression, error);
            break;

        case 129:
            print_parsed_as_constant(out, v->number);
            break;

        case 128:
            print_parsed_as_variable(out, v->variable, error);
            break;

        default:
            *error = EVAL_ERROR_INVALID_VALUE;
            break;
    }
}
