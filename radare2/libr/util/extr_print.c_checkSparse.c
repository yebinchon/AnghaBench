
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static bool checkSparse(const ut8 *p, int len, int ch) {
 int i;
 ut8 q = *p;
 if (ch && ch != q) {
  return 0;
 }
 for (i = 1; i < len; i++) {
  if (p[i] != q) {
   return 0;
  }
 }
 return 1;
}
