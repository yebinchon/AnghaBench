
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ val ;



int append_int(char *in, int in_len, int val, int val_len) {
  int in_len_copy = in_len;
  for (int i = val_len - 1; i >= 0; i--) {
    in[in_len_copy] = ((unsigned int)(val) & (1U << (unsigned int)(i))) != 0U;
    in_len_copy++;
  }
  return in_len_copy;
}
