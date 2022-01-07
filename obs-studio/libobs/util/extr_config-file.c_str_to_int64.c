
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int strtoll (char const*,int *,int) ;

__attribute__((used)) static inline int64_t str_to_int64(const char *str)
{
 if (!str || !*str)
  return 0;

 if (str[0] == '0' && str[1] == 'x')
  return strtoll(str + 2, ((void*)0), 16);
 else
  return strtoll(str, ((void*)0), 10);
}
