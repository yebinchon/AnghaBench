
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static int enduser_setup_get_lenth_of_param_value(const char *str)
{
  char *found = strpbrk (str, "& ");
  if (!found)
  {
    return strlen(str);
  }
  else
  {
    return found - str;
  }
}
