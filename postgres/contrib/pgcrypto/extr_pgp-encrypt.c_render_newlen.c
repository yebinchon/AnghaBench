
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static uint8 *
render_newlen(uint8 *h, int len)
{
 if (len <= 191)
 {
  *h++ = len & 255;
 }
 else if (len > 191 && len <= 8383)
 {
  *h++ = ((len - 192) >> 8) + 192;
  *h++ = (len - 192) & 255;
 }
 else
 {
  *h++ = 255;
  *h++ = (len >> 24) & 255;
  *h++ = (len >> 16) & 255;
  *h++ = (len >> 8) & 255;
  *h++ = len & 255;
 }
 return h;
}
