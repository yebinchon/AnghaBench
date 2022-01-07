
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int astrcmp_n (int ,char const*,size_t const) ;

__attribute__((used)) static inline int dstr_ncmp(const struct dstr *str1, const char *str2,
       const size_t n)
{
 return astrcmp_n(str1->array, str2, n);
}
