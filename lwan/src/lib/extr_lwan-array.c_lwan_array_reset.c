
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_array {void* base; scalar_t__ elements; } ;


 int EINVAL ;
 scalar_t__ UNLIKELY (int) ;
 int free (void*) ;

int lwan_array_reset(struct lwan_array *a, void *inline_storage)
{
    if (UNLIKELY(!a))
        return -EINVAL;

    if (a->base != inline_storage)
        free(a->base);

    a->base = ((void*)0);
    a->elements = 0;

    return 0;
}
