
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char*,char*,int) ;
 unsigned int strtoul (char*,int *,int) ;

__attribute__((used)) static unsigned int get_num(char *str)
{
 if (!strncmp("0x", str, 2))
  return strtoul(str+2, ((void*)0), 16);
 else
  return strtoul(str, ((void*)0), 10);
}
