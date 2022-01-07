
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _crypt_itoa64 ;

char *
_crypt_gensalt_traditional_rn(unsigned long count,
         const char *input, int size, char *output, int output_size)
{
 if (size < 2 || output_size < 2 + 1 || (count && count != 25))
 {
  if (output_size > 0)
   output[0] = '\0';
  return ((void*)0);
 }

 output[0] = _crypt_itoa64[(unsigned int) input[0] & 0x3f];
 output[1] = _crypt_itoa64[(unsigned int) input[1] & 0x3f];
 output[2] = '\0';

 return output;
}
