
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;


 scalar_t__ INT_MAX ;
 int PRINTF_DEBUG (char*) ;
 scalar_t__ ZEND_STRTOL (char*,char**,int) ;

__attribute__((used)) inline static int
php_sprintf_getnumber(char **buffer, size_t *len)
{
 char *endptr;
 register zend_long num = ZEND_STRTOL(*buffer, &endptr, 10);
 register size_t i;

 if (endptr != ((void*)0)) {
  i = (endptr - *buffer);
  *len -= i;
  *buffer = endptr;
 }
 PRINTF_DEBUG(("sprintf_getnumber: number was %d bytes long\n", i));

 if (num >= INT_MAX || num < 0) {
  return -1;
 } else {
  return (int) num;
 }
}
