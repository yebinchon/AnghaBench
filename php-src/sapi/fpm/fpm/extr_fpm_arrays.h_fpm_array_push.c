
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_array_s {size_t used; size_t allocated; size_t sz; void* data; } ;


 void* fpm_array_item (struct fpm_array_s*,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static inline void *fpm_array_push(struct fpm_array_s *a)
{
 void *ret;

 if (a->used == a->allocated) {
  size_t new_allocated = a->allocated ? a->allocated * 2 : 20;
  void *new_ptr = realloc(a->data, a->sz * new_allocated);

  if (!new_ptr) {
   return 0;
  }

  a->data = new_ptr;
  a->allocated = new_allocated;
 }

 ret = fpm_array_item(a, a->used);

 ++a->used;

 return ret;
}
