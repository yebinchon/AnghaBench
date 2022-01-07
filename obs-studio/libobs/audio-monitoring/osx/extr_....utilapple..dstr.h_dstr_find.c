
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 char const* strstr (int ,char const*) ;

__attribute__((used)) static inline const char *dstr_find(const struct dstr *str, const char *find)
{
 return strstr(str->array, find);
}
