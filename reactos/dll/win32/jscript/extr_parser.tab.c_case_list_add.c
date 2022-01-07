
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_6__ {TYPE_2__* tail; } ;
typedef TYPE_1__ case_list_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ case_clausule_t ;



__attribute__((used)) static case_list_t *case_list_add(parser_ctx_t *ctx, case_list_t *list, case_clausule_t *case_clausule)
{
    list->tail = list->tail->next = case_clausule;

    return list;
}
