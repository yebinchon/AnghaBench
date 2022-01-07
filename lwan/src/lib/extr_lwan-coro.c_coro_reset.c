
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coro {unsigned char* stack; uintptr_t* context; int defer; } ;
typedef scalar_t__ coro_function_t ;
struct TYPE_2__ {unsigned char* ss_sp; uintptr_t ss_size; scalar_t__ ss_flags; } ;


 uintptr_t CORO_STACK_MIN ;
 size_t STACK_PTR ;
 int coro_defer_array_reset (int *) ;
 int coro_deferred_run (struct coro*,int ) ;
 scalar_t__ coro_entry_point ;
 int getcontext (uintptr_t**) ;
 int makecontext (uintptr_t**,void (*) (),int,struct coro*,scalar_t__,void*) ;

void coro_reset(struct coro *coro, coro_function_t func, void *data)
{
    unsigned char *stack = coro->stack;

    coro_deferred_run(coro, 0);
    coro_defer_array_reset(&coro->defer);






    coro->context[5 ] = (uintptr_t)data;
    coro->context[6 ] = (uintptr_t)coro;
    coro->context[7 ] = (uintptr_t)func;
    coro->context[8 ] = (uintptr_t)coro_entry_point;




    uintptr_t rsp = (uintptr_t)stack + CORO_STACK_MIN;


    coro->context[9] = (rsp & ~0xful) - 0x8ul;
}
