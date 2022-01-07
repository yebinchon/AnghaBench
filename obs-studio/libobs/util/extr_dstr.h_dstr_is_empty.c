
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int * array; int len; } ;



__attribute__((used)) static inline bool dstr_is_empty(const struct dstr *str)
{
 if (!str->array || !str->len)
  return 1;
 if (!*str->array)
  return 1;

 return 0;
}
