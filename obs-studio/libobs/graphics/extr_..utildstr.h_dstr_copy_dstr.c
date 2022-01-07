
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ len; scalar_t__ array; } ;


 int dstr_ensure_capacity (struct dstr*,scalar_t__) ;
 int dstr_free (struct dstr*) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dstr_copy_dstr(struct dstr *dst, const struct dstr *src)
{
 if (dst->array)
  dstr_free(dst);

 if (src->len) {
  dstr_ensure_capacity(dst, src->len + 1);
  memcpy(dst->array, src->array, src->len + 1);
  dst->len = src->len;
 }
}
