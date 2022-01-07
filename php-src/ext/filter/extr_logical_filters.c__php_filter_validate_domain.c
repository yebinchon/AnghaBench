
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int FILTER_FLAG_HOSTNAME ;
 int isalnum (int) ;

__attribute__((used)) static int _php_filter_validate_domain(char * domain, int len, zend_long flags)
{
 char *e, *s, *t;
 size_t l;
 int hostname = flags & FILTER_FLAG_HOSTNAME;
 unsigned char i = 1;

 s = domain;
 l = len;
 e = domain + l;
 t = e - 1;


 if (*t == '.') {
  e = t;
  l--;
 }


 if (l > 253) {
  return 0;
 }


 if(*s == '.' || (hostname && !isalnum((int)*(unsigned char *)s))) {
  return 0;
 }

 while (s < e) {
  if (*s == '.') {

   if (*(s + 1) == '.' || (hostname && (!isalnum((int)*(unsigned char *)(s - 1)) || !isalnum((int)*(unsigned char *)(s + 1))))) {
    return 0;
   }


   i = 1;
  } else {
   if (i > 63 || (hostname && *s != '-' && !isalnum((int)*(unsigned char *)s))) {
    return 0;
   }

   i++;
  }

  s++;
 }

 return 1;
}
