
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char operator; } ;
typedef TYPE_1__ EVAL_NODE ;


 TYPE_1__* eval_node_alloc (int) ;
 int eval_node_set_value_to_node (TYPE_1__*,int ,TYPE_1__*) ;
 TYPE_1__* parse_one_full_operand (char const**,int*) ;

__attribute__((used)) static inline EVAL_NODE *parse_next_operand_given_its_operator(const char **string, unsigned char operator_type, int *error) {
    EVAL_NODE *sub = parse_one_full_operand(string, error);
    if(!sub) return ((void*)0);

    EVAL_NODE *op = eval_node_alloc(1);
    op->operator = operator_type;
    eval_node_set_value_to_node(op, 0, sub);
    return op;
}
