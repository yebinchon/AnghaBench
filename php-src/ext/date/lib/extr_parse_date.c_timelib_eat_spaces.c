
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void timelib_eat_spaces(char **ptr)
{
 while (**ptr == ' ' || **ptr == '\t') {
  ++*ptr;
 }
}
