
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVAL_NODE ;


 int EVAL_ERROR_MISSING_OPERAND ;
 int * parse_one_full_operand (char const**,int*) ;
 int * parse_rest_of_expression (char const**,int*,int *) ;

__attribute__((used)) static inline EVAL_NODE *parse_full_expression(const char **string, int *error) {
    EVAL_NODE *op1 = parse_one_full_operand(string, error);
    if(!op1) {
        *error = EVAL_ERROR_MISSING_OPERAND;
        return ((void*)0);
    }

    return parse_rest_of_expression(string, error, op1);
}
