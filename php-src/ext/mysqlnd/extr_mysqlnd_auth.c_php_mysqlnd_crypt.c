
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;



__attribute__((used)) static void
php_mysqlnd_crypt(zend_uchar *buffer, const zend_uchar *s1, const zend_uchar *s2, size_t len)
{
 const zend_uchar *s1_end = s1 + len;
 while (s1 < s1_end) {
  *buffer++= *s1++ ^ *s2++;
 }
}
