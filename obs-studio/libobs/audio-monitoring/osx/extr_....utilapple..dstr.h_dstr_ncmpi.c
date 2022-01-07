
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int astrcmpi_n (int ,char const*,size_t const) ;

__attribute__((used)) static inline int dstr_ncmpi(const struct dstr *str1, const char *str2,
        const size_t n)
{
 return astrcmpi_n(str1->array, str2, n);
}
