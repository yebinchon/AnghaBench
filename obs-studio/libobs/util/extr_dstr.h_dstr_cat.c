
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_ncat (struct dstr*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline void dstr_cat(struct dstr *dst, const char *array)
{
 size_t len;
 if (!array || !*array)
  return;

 len = strlen(array);
 dstr_ncat(dst, array, len);
}
