
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int num; int array; } ;


 size_t darray_push_back_array (size_t const,struct darray*,int ,int ) ;

__attribute__((used)) static inline size_t darray_push_back_darray(const size_t element_size,
          struct darray *dst,
          const struct darray *da)
{
 return darray_push_back_array(element_size, dst, da->array, da->num);
}
