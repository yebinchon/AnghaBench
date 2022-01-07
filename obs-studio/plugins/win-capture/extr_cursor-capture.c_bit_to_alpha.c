
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t bit_to_alpha(uint8_t *data, long pixel, bool invert)
{
 uint8_t pix_byte = data[pixel / 8];
 bool alpha = (pix_byte >> (7 - pixel % 8) & 1) != 0;

 if (invert) {
  return alpha ? 0xFF : 0;
 } else {
  return alpha ? 0 : 0xFF;
 }
}
