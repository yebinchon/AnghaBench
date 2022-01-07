
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_malloc_t ;
typedef int json_free_t ;


 int do_free ;
 int do_malloc ;

void json_get_alloc_funcs(json_malloc_t *malloc_fn, json_free_t *free_fn)
{
    if (malloc_fn)
        *malloc_fn = do_malloc;
    if (free_fn)
        *free_fn = do_free;
}
