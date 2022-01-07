
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; int len; } ;


 scalar_t__ dstr_is_empty (struct dstr const*) ;

__attribute__((used)) static inline char dstr_end(const struct dstr *str)
{
 if (dstr_is_empty(str))
  return 0;

 return str->array[str->len - 1];
}
