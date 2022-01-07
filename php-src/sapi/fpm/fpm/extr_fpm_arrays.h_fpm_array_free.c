
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_array_s {scalar_t__ allocated; scalar_t__ used; scalar_t__ sz; scalar_t__ data; } ;


 int free (scalar_t__) ;

__attribute__((used)) static inline void fpm_array_free(struct fpm_array_s *a)
{
 free(a->data);
 a->data = 0;
 a->sz = 0;
 a->used = a->allocated = 0;
}
