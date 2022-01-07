
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t len; scalar_t__* array; } ;


 int dstr_ensure_capacity (struct dstr*,size_t const) ;
 int dstr_free (struct dstr*) ;

__attribute__((used)) static inline void dstr_resize(struct dstr *dst, const size_t num)
{
 if (!num) {
  dstr_free(dst);
  return;
 }

 dstr_ensure_capacity(dst, num + 1);
 dst->array[num] = 0;
 dst->len = num;
}
