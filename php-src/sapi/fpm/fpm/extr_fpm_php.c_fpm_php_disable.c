
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void fpm_php_disable(char *value, int (*zend_disable)(char *, size_t))
{
 char *s = 0, *e = value;

 while (*e) {
  switch (*e) {
   case ' ':
   case ',':
    if (s) {
     *e = '\0';
     zend_disable(s, e - s);
     s = 0;
    }
    break;
   default:
    if (!s) {
     s = e;
    }
    break;
  }
  e++;
 }

 if (s) {
  zend_disable(s, e - s);
 }
}
