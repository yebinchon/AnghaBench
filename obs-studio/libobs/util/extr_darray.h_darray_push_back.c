
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t num; } ;


 int darray_end (size_t const,struct darray*) ;
 int darray_ensure_capacity (size_t const,struct darray*,size_t) ;
 int memcpy (int ,void const*,size_t const) ;

__attribute__((used)) static inline size_t darray_push_back(const size_t element_size,
          struct darray *dst, const void *item)
{
 darray_ensure_capacity(element_size, dst, ++dst->num);
 memcpy(darray_end(element_size, dst), item, element_size);

 return dst->num - 1;
}
