
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static int ignoreMask(const ut8 *bm, int len) {
 int i;
 for (i=0; i<len; i++) {
  if (bm[i] != 0xff) {
   return 0;
  }
 }
 return 1;
}
