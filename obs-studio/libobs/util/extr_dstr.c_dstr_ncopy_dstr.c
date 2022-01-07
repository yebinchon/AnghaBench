
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t len; size_t capacity; scalar_t__* array; } ;


 scalar_t__* bmemdup (scalar_t__*,size_t) ;
 int dstr_free (struct dstr*) ;
 size_t size_min (size_t const,size_t) ;

void dstr_ncopy_dstr(struct dstr *dst, const struct dstr *str, const size_t len)
{
 size_t newlen;

 if (dst->array)
  dstr_free(dst);

 if (!len)
  return;

 newlen = size_min(len, str->len);
 dst->array = bmemdup(str->array, newlen + 1);
 dst->len = newlen;
 dst->capacity = newlen + 1;

 dst->array[newlen] = 0;
}
