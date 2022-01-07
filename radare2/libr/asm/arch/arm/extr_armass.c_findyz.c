
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int findyz(int x, int *y, int *z) {
 int i, j;
 for (i = 0;i < 0xff; i++) {
  for (j = 0;j < 0xf;j++) {
   int v = i << j;
   if (v > x) {
    continue;
   }
   if (v == x) {
    *y = i;
    *z = 16 - (j / 2);
    return 1;
   }
  }
 }
 return 0;
}
