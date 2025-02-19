
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void SHADecode64(uint64_t *output, const unsigned char *input, unsigned int len)
{
 unsigned int i, j;

 for (i = 0, j = 0; j < len; i++, j += 8)
  output[i] =
   ((uint64_t) input[j + 7]) | (((uint64_t) input[j + 6]) << 8) |
   (((uint64_t) input[j + 5]) << 16) | (((uint64_t) input[j + 4]) << 24) |
   (((uint64_t) input[j + 3]) << 32) | (((uint64_t) input[j + 2]) << 40) |
   (((uint64_t) input[j + 1]) << 48) | (((uint64_t) input[j]) << 56);
}
