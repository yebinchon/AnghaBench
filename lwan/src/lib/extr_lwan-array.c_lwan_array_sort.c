
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_array {int elements; int base; } ;


 scalar_t__ LIKELY (int ) ;
 int qsort (int ,int ,size_t,int (*) (void const*,void const*)) ;

void lwan_array_sort(struct lwan_array *a,
                     size_t element_size,
                     int (*cmp)(const void *a, const void *b))
{
    if (LIKELY(a->elements))
        qsort(a->base, a->elements, element_size, cmp);
}
