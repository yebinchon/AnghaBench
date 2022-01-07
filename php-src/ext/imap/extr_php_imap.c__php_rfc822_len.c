
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int _php_rfc822_len(char *str)
{
 int len;
 char *p;

 if (!str || !*str) {
  return 0;
 }




 len = strlen(str) + 2;
 p = str;



 while ((p = strpbrk(p, "\\\""))) {
  p++;
  len++;
 }

 return len;
}
