
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strlen(const char *str)
{
  int len = 0;

  if(str == (char *)0)
    return 0;

  while(*str++ != 0)
    len++;

  return len;
}
