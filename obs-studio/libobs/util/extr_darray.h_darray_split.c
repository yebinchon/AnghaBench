
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; int array; } ;


 int assert (int) ;
 int darray_copy (size_t const,struct darray*,struct darray const*) ;
 int darray_copy_array (size_t const,struct darray*,int ,size_t const) ;
 int darray_free (struct darray*) ;
 int darray_init (struct darray*) ;
 int darray_item (size_t const,struct darray*,size_t const) ;

__attribute__((used)) static inline void darray_split(const size_t element_size, struct darray *dst1,
    struct darray *dst2, const struct darray *da,
    const size_t idx)
{
 struct darray temp;

 assert(da->num >= idx);
 assert(dst1 != dst2);

 darray_init(&temp);
 darray_copy(element_size, &temp, da);

 darray_free(dst1);
 darray_free(dst2);

 if (da->num) {
  if (idx)
   darray_copy_array(element_size, dst1, temp.array,
       temp.num);
  if (idx < temp.num - 1)
   darray_copy_array(element_size, dst2,
       darray_item(element_size, &temp, idx),
       temp.num - idx);
 }

 darray_free(&temp);
}
