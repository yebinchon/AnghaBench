
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tail; } ;
typedef TYPE_1__ variable_list_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ variable_declaration_t ;
typedef int parser_ctx_t ;



__attribute__((used)) static variable_list_t *variable_list_add(parser_ctx_t *ctx, variable_list_t *list, variable_declaration_t *decl)
{
    list->tail = list->tail->next = decl;

    return list;
}
