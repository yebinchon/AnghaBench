
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool expect_literal(const char **sp, const char *str)
{
 const char *s = *sp;

 while (*str != '\0')
  if (*s++ != *str++)
   return 0;

 *sp = s;
 return 1;
}
