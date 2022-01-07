
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void print_product_name(char *product_name, bool parsable)
{
 if (!parsable)
  printf("   %s\n", product_name);
}
