
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int append_bits(char *in, int in_len, char *app, int app_len) {
  int in_len_copy = in_len;
  for (int i = 0; i < app_len; i++) {
    in[in_len_copy] = app[i];
    in_len_copy++;
  }
  return in_len_copy;
}
