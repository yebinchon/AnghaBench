
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nn_strncasecmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

const char *
nn_strcasestr(const char *str, const char *key)
{
 size_t len = strlen(key);

 while (*str != '\0') {
  if (nn_strncasecmp(str, key, len) == 0) {
   return str;
  }
  str++;
 }
 return (((void*)0));
}
