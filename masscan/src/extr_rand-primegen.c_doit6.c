
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;


 long B ;
 int* two ;

__attribute__((used)) static void doit6(register uint32_t *a,register long x,register long y,int64_t start)
{
  long i0;
  long y0;
  register long i;
  register uint32_t data;
  register uint32_t pos;
  register uint32_t bits;

  x += 5;
  y += 15;

  start += 1000000000;
  while (start < 0) { start += x; x += 10; }
  start -= 1000000000;
  i = start;
  while (i < B) { i += x; x += 10; }

  for (;;) {
    x -= 10;
    if (x <= 5) return;
    i -= x;

    while (i < 0) { i += y; y += 30; }

    i0 = i; y0 = y;
    while (i < B) {
      pos = (uint32_t)i; data = (uint32_t)i;
      pos >>= 5; data &= 31;
      i += y; y += 30;
      bits = a[pos]; data = two[data];
      bits ^= data;
      a[pos] = bits;
    }
    i = i0; y = y0;
  }
}
