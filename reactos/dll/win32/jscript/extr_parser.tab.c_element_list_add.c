
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_5__ {TYPE_2__* tail; } ;
typedef TYPE_1__ element_list_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 TYPE_2__* new_array_element (int *,int,int *) ;

__attribute__((used)) static element_list_t *element_list_add(parser_ctx_t *ctx, element_list_t *list, int elision, expression_t *expr)
{
    list->tail = list->tail->next = new_array_element(ctx, elision, expr);

    return list;
}
