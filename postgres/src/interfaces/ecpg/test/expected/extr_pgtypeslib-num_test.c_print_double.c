
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int sprintf (char*,char*,double) ;
 int strlen (char*) ;

__attribute__((used)) static void
print_double(double x)
{
 printf("%g", x);

}
