
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_array_s {int used; int sz; } ;


 void* fpm_array_item (struct fpm_array_s*,unsigned int) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static inline int fpm_array_item_remove(struct fpm_array_s *a, unsigned int n)
{
 int ret = -1;

 if (n < a->used - 1) {
  void *last = fpm_array_item(a, a->used - 1);
  void *to_remove = fpm_array_item(a, n);

  memcpy(to_remove, last, a->sz);

  ret = n;
 }

 --a->used;

 return ret;
}
