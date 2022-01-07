
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char to_hex_char(int a) {
  char ret;
  if (a < 10) {
    ret = '0' + a;
  } else {
    ret = 'a' + (a - 10);
  }
  return ret;
}
