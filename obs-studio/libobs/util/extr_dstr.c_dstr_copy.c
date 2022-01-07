
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {size_t len; int array; } ;


 int dstr_ensure_capacity (struct dstr*,size_t) ;
 int dstr_free (struct dstr*) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

void dstr_copy(struct dstr *dst, const char *array)
{
 size_t len;

 if (!array || !*array) {
  dstr_free(dst);
  return;
 }

 len = strlen(array);
 dstr_ensure_capacity(dst, len + 1);
 memcpy(dst->array, array, len + 1);
 dst->len = len;
}
