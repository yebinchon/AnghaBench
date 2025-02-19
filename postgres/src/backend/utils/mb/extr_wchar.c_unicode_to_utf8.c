
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;



unsigned char *
unicode_to_utf8(pg_wchar c, unsigned char *utf8string)
{
 if (c <= 0x7F)
 {
  utf8string[0] = c;
 }
 else if (c <= 0x7FF)
 {
  utf8string[0] = 0xC0 | ((c >> 6) & 0x1F);
  utf8string[1] = 0x80 | (c & 0x3F);
 }
 else if (c <= 0xFFFF)
 {
  utf8string[0] = 0xE0 | ((c >> 12) & 0x0F);
  utf8string[1] = 0x80 | ((c >> 6) & 0x3F);
  utf8string[2] = 0x80 | (c & 0x3F);
 }
 else
 {
  utf8string[0] = 0xF0 | ((c >> 18) & 0x07);
  utf8string[1] = 0x80 | ((c >> 12) & 0x3F);
  utf8string[2] = 0x80 | ((c >> 6) & 0x3F);
  utf8string[3] = 0x80 | (c & 0x3F);
 }

 return utf8string;
}
