
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;

__attribute__((used)) static bool
isvarchar(unsigned char c)
{
 if (isalnum(c))
  return 1;

 if (c == '_' || c == '>' || c == '-' || c == '.')
  return 1;

 if (c >= 128)
  return 1;

 return 0;
}
