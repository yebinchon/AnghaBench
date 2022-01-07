
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int append_crc(char *in, int in_len) {
  unsigned int crc = 0;
  for (int i = 0; i < in_len; i++) {
    crc <<= 1;
    if (((unsigned int)(in[i]) ^ ((crc >> 15) & 1U)) != 0U) {
      crc = crc ^ 0x4599U;
    }
    crc &= 0x7fffU;
  }
  int in_len_copy = in_len;
  for (int i = 14; i >= 0; i--) {
    in[in_len_copy] = (crc >> (unsigned int)(i)) & 1U;
    in_len_copy++;
  }
  return in_len_copy;
}
