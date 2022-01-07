
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; int error_msg; int result; scalar_t__ nodes; } ;
typedef int EVAL_NODE ;
typedef TYPE_1__ EVAL_EXPRESSION ;


 scalar_t__ EVAL_ERROR_OK ;
 scalar_t__ EVAL_ERROR_UNKNOWN_VARIABLE ;
 scalar_t__ EVAL_ERROR_VALUE_IS_INFINITE ;
 scalar_t__ EVAL_ERROR_VALUE_IS_NAN ;
 int NAN ;
 int buffer_reset (int ) ;
 int buffer_sprintf (int ,char*,scalar_t__,int ) ;
 int buffer_strcat (int ,char*) ;
 scalar_t__ buffer_strlen (int ) ;
 int eval_node (TYPE_1__*,int *,scalar_t__*) ;
 int expression_strerror (scalar_t__) ;
 int isinf (int ) ;
 int isnan (int ) ;
 scalar_t__ unlikely (int) ;

int expression_evaluate(EVAL_EXPRESSION *expression) {
    expression->error = EVAL_ERROR_OK;

    buffer_reset(expression->error_msg);
    expression->result = eval_node(expression, (EVAL_NODE *)expression->nodes, &expression->error);

    if(unlikely(isnan(expression->result))) {
        if(expression->error == EVAL_ERROR_OK)
            expression->error = EVAL_ERROR_VALUE_IS_NAN;
    }
    else if(unlikely(isinf(expression->result))) {
        if(expression->error == EVAL_ERROR_OK)
            expression->error = EVAL_ERROR_VALUE_IS_INFINITE;
    }
    else if(unlikely(expression->error == EVAL_ERROR_UNKNOWN_VARIABLE)) {


        expression->error = EVAL_ERROR_OK;
    }

    if(expression->error != EVAL_ERROR_OK) {
        expression->result = NAN;

        if(buffer_strlen(expression->error_msg))
            buffer_strcat(expression->error_msg, "; ");

        buffer_sprintf(expression->error_msg, "failed to evaluate expression with error %d (%s)", expression->error, expression_strerror(expression->error));
        return 0;
    }

    return 1;
}
