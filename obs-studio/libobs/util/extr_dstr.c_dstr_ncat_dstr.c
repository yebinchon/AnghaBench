
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t len; scalar_t__* array; } ;


 int dstr_ensure_capacity (struct dstr*,size_t) ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;
 size_t size_min (size_t const,size_t) ;

void dstr_ncat_dstr(struct dstr *dst, const struct dstr *str, const size_t len)
{
 size_t new_len, in_len;
 if (!str->array || !*str->array || !len)
  return;

 in_len = size_min(len, str->len);
 new_len = dst->len + in_len;

 dstr_ensure_capacity(dst, new_len + 1);
 memcpy(dst->array + dst->len, str->array, in_len);

 dst->len = new_len;
 dst->array[new_len] = 0;
}
