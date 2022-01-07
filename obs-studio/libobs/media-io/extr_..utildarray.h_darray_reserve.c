
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {size_t const num; size_t capacity; void* array; } ;


 int bfree (void*) ;
 void* bmalloc (size_t const) ;
 int memcpy (void*,void*,size_t const) ;

__attribute__((used)) static inline void darray_reserve(const size_t element_size, struct darray *dst,
      const size_t capacity)
{
 void *ptr;
 if (capacity == 0 || capacity <= dst->num)
  return;

 ptr = bmalloc(element_size * capacity);
 if (dst->num)
  memcpy(ptr, dst->array, element_size * dst->num);
 if (dst->array)
  bfree(dst->array);
 dst->array = ptr;
 dst->capacity = capacity;
}
