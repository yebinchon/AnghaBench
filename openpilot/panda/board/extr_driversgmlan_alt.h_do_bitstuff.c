
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int do_bitstuff(char *out, char *in, int in_len) {
  int last_bit = -1;
  int bit_cnt = 0;
  int j = 0;
  for (int i = 0; i < in_len; i++) {
    char bit = in[i];
    out[j] = bit;
    j++;


    if (bit == last_bit) {
      bit_cnt++;
      if (bit_cnt == 5) {

        last_bit = !bit;
        out[j] = last_bit;
        j++;
        bit_cnt = 1;
      }
    } else {

      last_bit = bit;
      bit_cnt = 1;
    }
  }
  return j;
}
