
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* estrndup (char*,size_t) ;
 scalar_t__ strchr (char*,char) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *etrim(const char *str)
{
 char *val;
 size_t l;

 if (!str) {
  return ((void*)0);
 }
 val = (char*)str;
 while (*val && strchr(" \t\r\n", *val)) {
  val++;
 }
 l = strlen(val);
 while (l && (strchr(" \t\r\n", val[l-1]))) {
  l--;
 }
 return estrndup(val, l);
}
