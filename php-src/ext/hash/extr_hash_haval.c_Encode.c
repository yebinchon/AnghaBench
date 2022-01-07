
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void Encode(unsigned char *output, uint32_t *input, unsigned int len)
{
 unsigned int i, j;

 for (i = 0, j = 0; j < len; i++, j += 4) {
  output[j] = (unsigned char) (input[i] & 0xff);
  output[j + 1] = (unsigned char) ((input[i] >> 8) & 0xff);
  output[j + 2] = (unsigned char) ((input[i] >> 16) & 0xff);
  output[j + 3] = (unsigned char) ((input[i] >> 24) & 0xff);
 }
}
