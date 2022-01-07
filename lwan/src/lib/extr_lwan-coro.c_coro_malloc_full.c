
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;


 scalar_t__ LIKELY (void*) ;
 int coro_defer (struct coro*,void (*) (void*),void*) ;
 void* malloc (size_t) ;

void *coro_malloc_full(struct coro *coro,
                       size_t size,
                       void (*destroy_func)(void *data))
{
    void *ptr = malloc(size);

    if (LIKELY(ptr))
        coro_defer(coro, destroy_func, ptr);

    return ptr;
}
