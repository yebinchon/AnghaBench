
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
__md5_Encode(unsigned char *output, uint32_t *input, unsigned int len)
{
 unsigned int i, j;

 for (i = 0, j = 0; j < len; i++, j += 4) {
  output[j] = input[i];
  output[j+1] = (input[i] >> 8);
  output[j+2] = (input[i] >> 16);
  output[j+3] = (input[i] >> 24);
 }
}
