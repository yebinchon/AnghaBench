
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int astrcmp_n (char const*,char const*,size_t) ;

__attribute__((used)) static inline int cmp_type(const char *name, const size_t name_len,
      const char *type, const size_t type_len)
{
 size_t min_len = (name_len < type_len) ? type_len : name_len;
 return astrcmp_n(name, type, min_len);
}
