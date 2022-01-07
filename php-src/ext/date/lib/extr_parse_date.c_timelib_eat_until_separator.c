
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char) ;

__attribute__((used)) static void timelib_eat_until_separator(char **ptr)
{
 ++*ptr;
 while (strchr(" \t.,:;/-0123456789", **ptr) == ((void*)0)) {
  ++*ptr;
 }
}
