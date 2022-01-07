
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t const len; char* array; size_t capacity; } ;


 scalar_t__ brealloc (char*,size_t const) ;

__attribute__((used)) static inline void dstr_reserve(struct dstr *dst, const size_t capacity)
{
 if (capacity == 0 || capacity <= dst->len)
  return;

 dst->array = (char *)brealloc(dst->array, capacity);
 dst->capacity = capacity;
}
