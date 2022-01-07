
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static inline int dstr_cmp(const struct dstr *str1, const char *str2)
{
 return strcmp(str1->array, str2);
}
