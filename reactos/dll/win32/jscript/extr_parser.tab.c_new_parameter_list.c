
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_4__ {int tail; int head; } ;
typedef TYPE_1__ parameter_list_t ;
typedef int WCHAR ;


 int new_parameter (int *,int const*) ;
 TYPE_1__* parser_alloc_tmp (int *,int) ;

__attribute__((used)) static parameter_list_t *new_parameter_list(parser_ctx_t *ctx, const WCHAR *identifier)
{
    parameter_list_t *ret = parser_alloc_tmp(ctx, sizeof(parameter_list_t));

    ret->head = ret->tail = new_parameter(ctx, identifier);

    return ret;
}
