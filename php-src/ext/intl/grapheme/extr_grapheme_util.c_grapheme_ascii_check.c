
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;



zend_long grapheme_ascii_check(const unsigned char *day, size_t len)
{
 int ret_len = len;
 while ( len-- ) {
 if ( *day++ > 0x7f || (*day == '\n' && *(day - 1) == '\r') )
  return -1;
 }

 return ret_len;
}
