
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parameters; scalar_t__ isfunction; scalar_t__ print_as; } ;
struct TYPE_4__ {int count; size_t operator; int * ops; } ;
typedef TYPE_1__ EVAL_NODE ;
typedef int BUFFER ;


 int EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS ;
 size_t EVAL_OPERATOR_IF_THEN_ELSE ;
 int buffer_sprintf (int *,char*,scalar_t__) ;
 int buffer_strcat (int *,char*) ;
 TYPE_3__* operators ;
 int print_parsed_as_value (int *,int *,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void print_parsed_as_node(BUFFER *out, EVAL_NODE *op, int *error) {
    if(unlikely(op->count != operators[op->operator].parameters)) {
        *error = EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS;
        return;
    }

    if(operators[op->operator].parameters == 1) {

        if(operators[op->operator].print_as)
            buffer_sprintf(out, "%s", operators[op->operator].print_as);




        print_parsed_as_value(out, &op->ops[0], error);



    }

    else if(operators[op->operator].parameters == 2) {
        buffer_strcat(out, "(");
        print_parsed_as_value(out, &op->ops[0], error);

        if(operators[op->operator].print_as)
            buffer_sprintf(out, " %s ", operators[op->operator].print_as);

        print_parsed_as_value(out, &op->ops[1], error);
        buffer_strcat(out, ")");
    }
    else if(op->operator == EVAL_OPERATOR_IF_THEN_ELSE && operators[op->operator].parameters == 3) {
        buffer_strcat(out, "(");
        print_parsed_as_value(out, &op->ops[0], error);

        if(operators[op->operator].print_as)
            buffer_sprintf(out, " %s ", operators[op->operator].print_as);

        print_parsed_as_value(out, &op->ops[1], error);
        buffer_strcat(out, " : ");
        print_parsed_as_value(out, &op->ops[2], error);
        buffer_strcat(out, ")");
    }

    if(operators[op->operator].isfunction)
        buffer_strcat(out, ")");
}
