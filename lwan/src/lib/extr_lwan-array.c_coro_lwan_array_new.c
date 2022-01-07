
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_array {int dummy; } ;
struct coro {int dummy; } ;


 scalar_t__ LIKELY (struct lwan_array*) ;
 int coro_lwan_array_free_heap ;
 int coro_lwan_array_free_inline ;
 struct lwan_array* coro_malloc_full (struct coro*,int,int ) ;
 int lwan_array_init (struct lwan_array*) ;

struct lwan_array *coro_lwan_array_new(struct coro *coro, bool inline_first)
{
    struct lwan_array *array;

    array = coro_malloc_full(coro, sizeof(*array),
                             inline_first ? coro_lwan_array_free_inline
                                          : coro_lwan_array_free_heap);
    if (LIKELY(array))
        lwan_array_init(array);

    return array;
}
