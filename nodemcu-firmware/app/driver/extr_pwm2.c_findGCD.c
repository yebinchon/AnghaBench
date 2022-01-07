
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t findGCD(uint32_t n1, uint32_t n2) {
  uint32_t n3;
  while (n2 != 0) {
    n3 = n1;
    n1 = n2;
    n2 = n3 % n2;
  }
  return n1;
}
