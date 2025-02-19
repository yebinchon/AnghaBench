
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static inline uint32
unicode_to_utf8word(uint32 c)
{
 uint32 word;

 if (c <= 0x7F)
 {
  word = c;
 }
 else if (c <= 0x7FF)
 {
  word = (0xC0 | ((c >> 6) & 0x1F)) << 8;
  word |= 0x80 | (c & 0x3F);
 }
 else if (c <= 0xFFFF)
 {
  word = (0xE0 | ((c >> 12) & 0x0F)) << 16;
  word |= (0x80 | ((c >> 6) & 0x3F)) << 8;
  word |= 0x80 | (c & 0x3F);
 }
 else
 {
  word = (0xF0 | ((c >> 18) & 0x07)) << 24;
  word |= (0x80 | ((c >> 12) & 0x3F)) << 16;
  word |= (0x80 | ((c >> 6) & 0x3F)) << 8;
  word |= 0x80 | (c & 0x3F);
 }

 return word;
}
