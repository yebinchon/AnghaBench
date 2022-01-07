
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int mg_is_big_endian(void) {
  static const int n = 1;

  return ((char *) &n)[0] == 0;
}
