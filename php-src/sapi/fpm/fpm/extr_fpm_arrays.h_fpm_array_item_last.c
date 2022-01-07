
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_array_s {scalar_t__ used; } ;


 void* fpm_array_item (struct fpm_array_s*,scalar_t__) ;

__attribute__((used)) static inline void *fpm_array_item_last(struct fpm_array_s *a)
{
 return fpm_array_item(a, a->used - 1);
}
