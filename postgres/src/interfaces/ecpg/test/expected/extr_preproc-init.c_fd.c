
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int) ;

__attribute__((used)) static int fd(const char *x,int i)
{
 printf("in fd (%s, %d)\n", x, i);
 return (*x)*i;
}
