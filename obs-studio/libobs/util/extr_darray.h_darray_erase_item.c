
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;


 size_t DARRAY_INVALID ;
 int darray_erase (size_t const,struct darray*,size_t) ;
 size_t darray_find (size_t const,struct darray*,void const*,int ) ;

__attribute__((used)) static inline void darray_erase_item(const size_t element_size,
         struct darray *dst, const void *item)
{
 size_t idx = darray_find(element_size, dst, item, 0);
 if (idx != DARRAY_INVALID)
  darray_erase(element_size, dst, idx);
}
