
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static int
fc(const char *x)
{
 printf("in fc (%s)\n", x);
 return *x;
}
