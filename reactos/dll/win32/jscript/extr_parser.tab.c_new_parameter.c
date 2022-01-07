
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_4__ {int * next; int const* identifier; } ;
typedef TYPE_1__ parameter_t ;
typedef int WCHAR ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static parameter_t *new_parameter(parser_ctx_t *ctx, const WCHAR *identifier)
{
    parameter_t *ret = parser_alloc(ctx, sizeof(parameter_t));

    ret->identifier = identifier;
    ret->next = ((void*)0);

    return ret;
}
