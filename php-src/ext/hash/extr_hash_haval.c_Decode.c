
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void Decode(uint32_t *output, const unsigned char *input, unsigned int len)
{
 unsigned int i, j;

 for (i = 0, j = 0; j < len; i++, j += 4) {
  output[i] = ((uint32_t) input[j]) | (((uint32_t) input[j + 1]) << 8) |
   (((uint32_t) input[j + 2]) << 16) | (((uint32_t) input[j + 3]) << 24);
 }
}
