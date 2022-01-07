
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
ascii_to_bin(char ch)
{
 if (ch > 'z')
  return 0;
 if (ch >= 'a')
  return (ch - 'a' + 38);
 if (ch > 'Z')
  return 0;
 if (ch >= 'A')
  return (ch - 'A' + 12);
 if (ch > '9')
  return 0;
 if (ch >= '.')
  return (ch - '.');
 return 0;
}
