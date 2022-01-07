
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;


 int assert (int) ;

__attribute__((used)) static int utf8_write_char(uchar_t unicode, char *out)
{
 unsigned char *o = (unsigned char*) out;

 assert(unicode <= 0x10FFFF && !(unicode >= 0xD800 && unicode <= 0xDFFF));

 if (unicode <= 0x7F) {

  *o++ = (unsigned char)unicode;
  return 1;
 } else if (unicode <= 0x7FF) {

  *o++ = (unsigned char)(0xC0 | unicode >> 6);
  *o++ = (unsigned char)(0x80 | (unicode & 0x3F));
  return 2;
 } else if (unicode <= 0xFFFF) {

  *o++ = (unsigned char)(0xE0 | unicode >> 12);
  *o++ = (unsigned char)(0x80 | (unicode >> 6 & 0x3F));
  *o++ = (unsigned char)(0x80 | (unicode & 0x3F));
  return 3;
 } else {

  *o++ = (unsigned char)(0xF0 | unicode >> 18);
  *o++ = (unsigned char)(0x80 | (unicode >> 12 & 0x3F));
  *o++ = (unsigned char)(0x80 | (unicode >> 6 & 0x3F));
  *o++ = (unsigned char)(0x80 | (unicode & 0x3F));
  return 4;
 }
}
