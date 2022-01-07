
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * head; } ;
typedef TYPE_1__ statement_list_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_7__ {int * next; int * stat; int * expr; } ;
typedef TYPE_2__ case_clausule_t ;


 TYPE_2__* parser_alloc (int *,int) ;

__attribute__((used)) static case_clausule_t *new_case_clausule(parser_ctx_t *ctx, expression_t *expr, statement_list_t *stat_list)
{
    case_clausule_t *ret = parser_alloc(ctx, sizeof(case_clausule_t));

    ret->expr = expr;
    ret->stat = stat_list ? stat_list->head : ((void*)0);
    ret->next = ((void*)0);

    return ret;
}
