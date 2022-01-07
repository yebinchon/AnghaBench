
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int timelib_lookup_relative_text (char**,int*) ;

__attribute__((used)) static timelib_sll timelib_get_relative_text(char **ptr, int *behavior)
{
 while (**ptr == ' ' || **ptr == '\t' || **ptr == '-' || **ptr == '/') {
  ++*ptr;
 }
 return timelib_lookup_relative_text(ptr, behavior);
}
