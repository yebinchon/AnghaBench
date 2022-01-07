
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_array {scalar_t__ elements; int * base; } ;


 int EINVAL ;
 scalar_t__ UNLIKELY (int) ;

int lwan_array_init(struct lwan_array *a)
{
    if (UNLIKELY(!a))
        return -EINVAL;

    a->base = ((void*)0);
    a->elements = 0;

    return 0;
}
