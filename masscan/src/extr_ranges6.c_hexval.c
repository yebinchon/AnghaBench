
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
hexval(int c)
{
 if ('0' <= c && c <= '9')
  return (unsigned)(c - '0');
 else if ('a' <= c && c <= 'f')
  return (unsigned)(c - 'a' + 10);
 else if ('A' <= c && c <= 'F')
  return (unsigned)(c - 'A' + 10);
 else
  return 0;
}
