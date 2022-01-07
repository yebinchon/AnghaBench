
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_5__ {TYPE_4__* tail; } ;
typedef TYPE_1__ parameter_list_t ;
typedef int WCHAR ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 TYPE_4__* new_parameter (int *,int const*) ;

__attribute__((used)) static parameter_list_t *parameter_list_add(parser_ctx_t *ctx, parameter_list_t *list, const WCHAR *identifier)
{
    list->tail = list->tail->next = new_parameter(ctx, identifier);

    return list;
}
