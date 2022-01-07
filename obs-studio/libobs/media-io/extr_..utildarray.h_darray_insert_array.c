
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; } ;


 int assert (int) ;
 int darray_item (size_t const,struct darray*,size_t const) ;
 int darray_resize (size_t const,struct darray*,size_t const) ;
 int memcpy (int ,void const*,size_t const) ;
 int memmove (int ,int ,size_t const) ;

__attribute__((used)) static inline void darray_insert_array(const size_t element_size,
           struct darray *dst, const size_t idx,
           const void *array, const size_t num)
{
 size_t old_num;

 assert(array != ((void*)0));
 assert(num != 0);
 assert(idx < dst->num);

 old_num = dst->num;
 darray_resize(element_size, dst, dst->num + num);

 memmove(darray_item(element_size, dst, idx + num),
  darray_item(element_size, dst, idx),
  element_size * (old_num - idx));
 memcpy(darray_item(element_size, dst, idx), array, element_size * num);
}
