
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int dex_uleb128_len (int const*,int) ;

int dex_read_uleb128(const ut8 *ptr, int size) {
 ut8 len = dex_uleb128_len (ptr, size);
 if (len > size) {
  return 0;
 }
 const ut8 *in = ptr + len - 1;
 ut32 result = 0;
 ut8 shift = 0;
 ut8 byte;

 while(shift < 29 && len > 0) {
  byte = *(in--);
  result |= (byte & 0x7f << shift);
  if (byte > 0x7f) {
   break;
  }
  shift += 7;
  len--;
 }
 return result;
}
