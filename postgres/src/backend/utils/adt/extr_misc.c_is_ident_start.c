
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char) ;

__attribute__((used)) static bool
is_ident_start(unsigned char c)
{

 if (c == '_')
  return 1;
 if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
  return 1;

 if (IS_HIGHBIT_SET(c))
  return 1;
 return 0;
}
