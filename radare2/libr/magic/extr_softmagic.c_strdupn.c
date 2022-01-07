
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

char * strdupn(const char *str, size_t n) {
 size_t len;
 char *copy;

 for (len = 0; len < n && str[len]; len++) {}
 if (!(copy = malloc (len + 1))) {
  return ((void*)0);
 }
 (void)memcpy (copy, str, len);
 copy[len] = '\0';
 return copy;
}
