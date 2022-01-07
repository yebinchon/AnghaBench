
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** hextbl ;

unsigned
hex_encode(const char *src, unsigned len, char *dst)
{
 const char *end = src + len;

 while (src < end)
 {
  *dst++ = hextbl[(*src >> 4) & 0xF];
  *dst++ = hextbl[*src & 0xF];
  src++;
 }
 return len * 2;
}
