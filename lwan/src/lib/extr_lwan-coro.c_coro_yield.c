
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coro {int yield_value; TYPE_1__* switcher; } ;
struct TYPE_2__ {int caller; int callee; } ;


 int assert (struct coro*) ;
 int coro_swapcontext (int *,int *) ;

inline int coro_yield(struct coro *coro, int value)
{
    assert(coro);
    coro->yield_value = value;
    coro_swapcontext(&coro->switcher->callee, &coro->switcher->caller);
    return coro->yield_value;
}
