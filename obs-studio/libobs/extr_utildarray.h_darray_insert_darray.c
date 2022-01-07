
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int num; int array; } ;


 int darray_insert_array (size_t const,struct darray*,size_t const,int ,int ) ;

__attribute__((used)) static inline void darray_insert_darray(const size_t element_size,
     struct darray *dst, const size_t idx,
     const struct darray *da)
{
 darray_insert_array(element_size, dst, idx, da->array, da->num);
}
