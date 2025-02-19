
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ui2a(unsigned int num, unsigned int base, int uc, char *bf) {
  int n = 0;
  unsigned int d = 1;
  while (num / d >= base)
    d *= base;
  while (d != 0) {
    int dgt = num / d;
    num %= d;
    d /= base;
    if (n || dgt > 0 || d == 0) {
      *bf++ = dgt + (dgt < 10 ? '0' : (uc ? 'A' : 'a') - 10);
      ++n;
    }
  }
  *bf = 0;
}
