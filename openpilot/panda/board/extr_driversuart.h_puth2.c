
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putch (char) ;

void puth2(unsigned int i) {
  char c[] = "0123456789abcdef";
  for (int pos = 4; pos != -4; pos -= 4) {
    putch(c[(i >> (unsigned int)(pos)) & 0xFU]);
  }
}
