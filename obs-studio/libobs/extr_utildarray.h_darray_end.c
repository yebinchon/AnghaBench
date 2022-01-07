
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {scalar_t__ num; } ;


 void* darray_item (size_t const,struct darray const*,scalar_t__) ;

__attribute__((used)) static inline void *darray_end(const size_t element_size,
          const struct darray *da)
{
 if (!da->num)
  return ((void*)0);

 return darray_item(element_size, da, da->num - 1);
}
