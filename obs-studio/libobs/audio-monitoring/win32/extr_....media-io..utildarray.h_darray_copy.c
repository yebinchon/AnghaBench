
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; int array; } ;


 int darray_free (struct darray*) ;
 int darray_resize (size_t const,struct darray*,size_t const) ;
 int memcpy (int ,int ,size_t const) ;

__attribute__((used)) static inline void darray_copy(const size_t element_size, struct darray *dst,
          const struct darray *da)
{
 if (da->num == 0) {
  darray_free(dst);
 } else {
  darray_resize(element_size, dst, da->num);
  memcpy(dst->array, da->array, element_size * da->num);
 }
}
