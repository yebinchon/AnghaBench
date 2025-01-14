
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; } ;


 int assert (int) ;
 void* darray_item (size_t const,struct darray*,size_t const) ;
 int free (void*) ;
 void* malloc (size_t const) ;
 int memcpy (void*,void*,size_t const) ;

__attribute__((used)) static inline void darray_swap(const size_t element_size, struct darray *dst,
          const size_t a, const size_t b)
{
 void *temp, *a_ptr, *b_ptr;

 assert(a < dst->num);
 assert(b < dst->num);

 if (a == b)
  return;

 temp = malloc(element_size);
 a_ptr = darray_item(element_size, dst, a);
 b_ptr = darray_item(element_size, dst, b);

 memcpy(temp, a_ptr, element_size);
 memcpy(a_ptr, b_ptr, element_size);
 memcpy(b_ptr, temp, element_size);

 free(temp);
}
