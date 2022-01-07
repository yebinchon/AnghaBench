
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
cpw(char *dst, char *src, int len)
{
 char *ptr = src;

 while (ptr - src < len)
 {
  if (*ptr == '"' || *ptr == '\\')
   *dst++ = '\\';
  *dst++ = *ptr++;
 }
 return dst;
}
