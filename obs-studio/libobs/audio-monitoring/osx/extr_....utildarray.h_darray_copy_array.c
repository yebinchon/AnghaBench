
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; int array; } ;


 int darray_resize (size_t const,struct darray*,size_t const) ;
 int memcpy (int ,void const*,size_t const) ;

__attribute__((used)) static inline void darray_copy_array(const size_t element_size,
         struct darray *dst, const void *array,
         const size_t num)
{
 darray_resize(element_size, dst, num);
 memcpy(dst->array, array, element_size * dst->num);
}
