
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;


 int darray_free (struct darray*) ;
 int darray_push_back_darray (size_t const,struct darray*,struct darray*) ;

__attribute__((used)) static inline void darray_join(const size_t element_size, struct darray *dst,
          struct darray *da)
{
 darray_push_back_darray(element_size, dst, da);
 darray_free(da);
}
