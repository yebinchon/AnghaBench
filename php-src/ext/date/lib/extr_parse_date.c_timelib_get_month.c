
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_long ;


 int timelib_lookup_month (char**) ;

__attribute__((used)) static timelib_long timelib_get_month(char **ptr)
{
 while (**ptr == ' ' || **ptr == '\t' || **ptr == '-' || **ptr == '.' || **ptr == '/') {
  ++*ptr;
 }
 return timelib_lookup_month(ptr);
}
