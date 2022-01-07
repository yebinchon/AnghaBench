
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void *memcpy(void *dest, const void *src, unsigned int n) {
  uint8_t *d = dest;
  const uint8_t *s = src;
  for (unsigned int i = 0; i < n; i++) {
    *d = *s;
    d++;
    s++;
  }
  return dest;
}
