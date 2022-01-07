
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;



__attribute__((used)) static unsigned int check_mb_utf8mb3_sequence(const char * const start, const char * const end)
{
 zend_uchar c;

 if (start >= end) {
  return 0;
 }

 c = (zend_uchar) start[0];

 if (c < 0x80) {
  return 1;
 }
 if (c < 0xC2) {
  return 0;
 }
 if (c < 0xE0) {
  if (start + 2 > end) {
   return 0;
  }
  if (!(((zend_uchar)start[1] ^ 0x80) < 0x40)) {
   return 0;
  }
  return 2;
 }
 if (c < 0xF0) {
  if (start + 3 > end) {
   return 0;
  }
  if (!(((zend_uchar)start[1] ^ 0x80) < 0x40 && ((zend_uchar)start[2] ^ 0x80) < 0x40 &&
   (c >= 0xE1 || (zend_uchar)start[1] >= 0xA0))) {
   return 0;
  }
  return 3;
 }
 return 0;
}
