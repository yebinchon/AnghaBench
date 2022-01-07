
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;


 void* coro_malloc_full (struct coro*,size_t,int ) ;
 int free ;

inline void *coro_malloc(struct coro *coro, size_t size)
{
    return coro_malloc_full(coro, size, free);
}
