
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* vars; } ;
typedef TYPE_1__ cc_var_t ;
typedef TYPE_1__ cc_ctx_t ;


 int heap_free (TYPE_1__*) ;

void release_cc(cc_ctx_t *cc)
{
    cc_var_t *iter, *next;

    for(iter = cc->vars; iter; iter = next) {
        next = iter->next;
        heap_free(iter);
    }

    heap_free(cc);
}
