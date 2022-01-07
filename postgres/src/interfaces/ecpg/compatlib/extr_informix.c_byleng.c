
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
byleng(char *str, int len)
{
 for (len--; str[len] && str[len] == ' '; len--);
 return (len + 1);
}
