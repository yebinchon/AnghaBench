
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; } ;



__attribute__((used)) static inline size_t darray_alloc_size(const size_t element_size,
           const struct darray *da)
{
 return element_size * da->num;
}
