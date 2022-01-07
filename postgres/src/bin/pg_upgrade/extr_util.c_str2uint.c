
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strtoul (char const*,int *,int) ;

unsigned int
str2uint(const char *str)
{
 return strtoul(str, ((void*)0), 10);
}
