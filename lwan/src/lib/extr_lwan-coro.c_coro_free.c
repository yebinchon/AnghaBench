
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int defer; int vg_stack_id; } ;


 int VALGRIND_STACK_DEREGISTER (int ) ;
 int assert (struct coro*) ;
 int coro_defer_array_reset (int *) ;
 int coro_deferred_run (struct coro*,int ) ;
 int free (struct coro*) ;

void coro_free(struct coro *coro)
{
    assert(coro);



    coro_deferred_run(coro, 0);
    coro_defer_array_reset(&coro->defer);
    free(coro);
}
