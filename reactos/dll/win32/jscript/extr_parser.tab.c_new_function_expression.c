
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int source_elements_t ;
typedef int parser_ctx_t ;
struct TYPE_5__ {int * head; } ;
typedef TYPE_1__ parameter_list_t ;
struct TYPE_6__ {int expr; int * next; int src_len; int const* src_str; int const* event_target; int * source_elements; int * parameter_list; int const* identifier; } ;
typedef TYPE_2__ function_expression_t ;
typedef int expression_t ;
typedef int WCHAR ;
typedef int DWORD ;


 int EXPR_FUNC ;
 TYPE_2__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_function_expression(parser_ctx_t *ctx, const WCHAR *identifier, parameter_list_t *parameter_list,
    source_elements_t *source_elements, const WCHAR *event_target, const WCHAR *src_str, DWORD src_len)
{
    function_expression_t *ret = new_expression(ctx, EXPR_FUNC, sizeof(*ret));

    ret->identifier = identifier;
    ret->parameter_list = parameter_list ? parameter_list->head : ((void*)0);
    ret->source_elements = source_elements;
    ret->event_target = event_target;
    ret->src_str = src_str;
    ret->src_len = src_len;
    ret->next = ((void*)0);

    return &ret->expr;
}
