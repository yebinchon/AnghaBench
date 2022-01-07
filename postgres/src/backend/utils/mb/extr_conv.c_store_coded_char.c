
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static inline unsigned char *
store_coded_char(unsigned char *dest, uint32 code)
{
 if (code & 0xff000000)
  *dest++ = code >> 24;
 if (code & 0x00ff0000)
  *dest++ = code >> 16;
 if (code & 0x0000ff00)
  *dest++ = code >> 8;
 if (code & 0x000000ff)
  *dest++ = code;
 return dest;
}
