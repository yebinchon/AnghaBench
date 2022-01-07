
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static void filter_import(ut8 *n) {
 int I;
 for (I = 0; n[I]; I++) {
  if (n[I] < 30 || n[I] >= 0x7f) {
   n[I] = 0;
   break;
  }
 }
}
