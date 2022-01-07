
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t len; size_t capacity; scalar_t__* array; } ;


 scalar_t__* bmemdup (char const*,size_t const) ;
 int dstr_free (struct dstr*) ;

void dstr_ncopy(struct dstr *dst, const char *array, const size_t len)
{
 if (dst->array)
  dstr_free(dst);

 if (!len)
  return;

 dst->array = bmemdup(array, len + 1);
 dst->len = len;
 dst->capacity = len + 1;

 dst->array[len] = 0;
}
