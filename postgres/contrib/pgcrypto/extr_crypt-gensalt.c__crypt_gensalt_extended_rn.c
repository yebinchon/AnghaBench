
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _crypt_itoa64 ;

char *
_crypt_gensalt_extended_rn(unsigned long count,
         const char *input, int size, char *output, int output_size)
{
 unsigned long value;



 if (size < 3 || output_size < 1 + 4 + 4 + 1 ||
  (count && (count > 0xffffff || !(count & 1))))
 {
  if (output_size > 0)
   output[0] = '\0';
  return ((void*)0);
 }

 if (!count)
  count = 725;

 output[0] = '_';
 output[1] = _crypt_itoa64[count & 0x3f];
 output[2] = _crypt_itoa64[(count >> 6) & 0x3f];
 output[3] = _crypt_itoa64[(count >> 12) & 0x3f];
 output[4] = _crypt_itoa64[(count >> 18) & 0x3f];
 value = (unsigned long) (unsigned char) input[0] |
  ((unsigned long) (unsigned char) input[1] << 8) |
  ((unsigned long) (unsigned char) input[2] << 16);
 output[5] = _crypt_itoa64[value & 0x3f];
 output[6] = _crypt_itoa64[(value >> 6) & 0x3f];
 output[7] = _crypt_itoa64[(value >> 12) & 0x3f];
 output[8] = _crypt_itoa64[(value >> 18) & 0x3f];
 output[9] = '\0';

 return output;
}
