
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj; struct TYPE_4__* next; scalar_t__ ref; } ;
typedef TYPE_1__ scope_chain_t ;


 int IDispatch_Release (int ) ;
 int heap_free (TYPE_1__*) ;

void scope_release(scope_chain_t *scope)
{
    if(--scope->ref)
        return;

    if(scope->next)
        scope_release(scope->next);

    IDispatch_Release(scope->obj);
    heap_free(scope);
}
