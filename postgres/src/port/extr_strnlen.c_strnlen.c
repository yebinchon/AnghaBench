
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strnlen(const char *str, size_t maxlen)
{
 const char *p = str;

 while (maxlen-- > 0 && *p)
  p++;
 return p - str;
}
