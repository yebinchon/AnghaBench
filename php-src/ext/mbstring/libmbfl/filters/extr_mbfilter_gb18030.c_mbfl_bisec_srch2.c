
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mbfl_bisec_srch2(int w, const unsigned short tbl[], int n)
{
 int k, k1 = 0, k2 = n;

 if (w == tbl[0]) {
  return 0;
 }

 while (k2 - k1 > 1) {
  k = (k1 + k2) >> 1;
  if (w < tbl[k]) {
   k2 = k;
  } else if (w > tbl[k]) {
   k1 = k;
  } else {
   return k;
  }
 }
 return -1;
}
