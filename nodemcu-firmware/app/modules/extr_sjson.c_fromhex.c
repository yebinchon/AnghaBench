
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fromhex(char c) {
  if (c <= '9') {
    return c & 0xf;
  }

  return ((c - 'A' + 10) & 0xf);
}
