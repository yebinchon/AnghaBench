
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 scalar_t__ malloc (int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static uint8 *
createPaddedCopyWithLength(const uint8 *b, uint32 *l)
{
 uint8 *ret;
 uint32 q;
 uint32 len,
    newLen448;
 uint32 len_high,
    len_low;

 len = ((b == ((void*)0)) ? 0 : *l);
 newLen448 = len + 64 - (len % 64) - 8;
 if (newLen448 <= len)
  newLen448 += 64;

 *l = newLen448 + 8;
 if ((ret = (uint8 *) malloc(sizeof(uint8) * *l)) == ((void*)0))
  return ((void*)0);

 if (b != ((void*)0))
  memcpy(ret, b, sizeof(uint8) * len);


 ret[len] = 0x80;
 for (q = len + 1; q < newLen448; q++)
  ret[q] = 0x00;


 len_low = len;


 len_high = len >> 29;
 len_low <<= 3;
 q = newLen448;
 ret[q++] = (len_low & 0xff);
 len_low >>= 8;
 ret[q++] = (len_low & 0xff);
 len_low >>= 8;
 ret[q++] = (len_low & 0xff);
 len_low >>= 8;
 ret[q++] = (len_low & 0xff);
 ret[q++] = (len_high & 0xff);
 len_high >>= 8;
 ret[q++] = (len_high & 0xff);
 len_high >>= 8;
 ret[q++] = (len_high & 0xff);
 len_high >>= 8;
 ret[q] = (len_high & 0xff);

 return ret;
}
