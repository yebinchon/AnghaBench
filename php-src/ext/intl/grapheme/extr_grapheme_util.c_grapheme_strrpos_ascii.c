
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef scalar_t__ int32_t ;


 scalar_t__ memcmp (char*,char*,size_t) ;

zend_long
grapheme_strrpos_ascii(char *haystack, size_t haystack_len, char *needle, size_t needle_len, int32_t offset)
{
 char *p, *e;

 if (offset >= 0) {
  p = haystack + offset;
  e = haystack + haystack_len - needle_len;
 } else {
  p = haystack;
  if (needle_len > (size_t)-offset) {
   e = haystack + haystack_len - needle_len;
  } else {
   e = haystack + haystack_len + offset;
  }
 }

 if (needle_len == 1) {

  while (e >= p) {
   if (*e == *needle) {
    return (e - p + (offset > 0 ? offset : 0));
   }
   e--;
  }
  return -1;
 }

 while (e >= p) {
  if (memcmp(e, needle, needle_len) == 0) {
   return (e - p + (offset > 0 ? offset : 0));
  }
  e--;
 }

 return -1;
}
