
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t myrandom(uint8_t seed) {
  uint8_t out = seed >> 1;
  if (seed & 1) {
    out = out ^ 0xB8;
  }
  return out;
}
