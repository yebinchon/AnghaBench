
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int printf (char*,int) ;

void print_el()
{
  int el = get_el();
 printf("Exception level: %d \r\n", el);
}
