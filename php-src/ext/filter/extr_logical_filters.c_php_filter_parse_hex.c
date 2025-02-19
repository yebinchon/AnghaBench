
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef scalar_t__ zend_long ;



__attribute__((used)) static int php_filter_parse_hex(const char *str, size_t str_len, zend_long *ret) {
 zend_ulong ctx_value = 0;
 const char *end = str + str_len;
 zend_ulong n;

 while (str < end) {
  if (*str >= '0' && *str <= '9') {
   n = ((*(str++)) - '0');
  } else if (*str >= 'a' && *str <= 'f') {
   n = ((*(str++)) - ('a' - 10));
  } else if (*str >= 'A' && *str <= 'F') {
   n = ((*(str++)) - ('A' - 10));
  } else {
   return -1;
  }
  if ((ctx_value > ((zend_ulong)(~(zend_long)0)) / 16) ||
   ((ctx_value = ctx_value * 16) > ((zend_ulong)(~(zend_long)0)) - n)) {
   return -1;
  }
  ctx_value += n;
 }

 *ret = (zend_long)ctx_value;
 return 1;
}
