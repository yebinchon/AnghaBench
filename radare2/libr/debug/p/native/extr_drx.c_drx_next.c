
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drxt ;



int drx_next(drxt *drx) {
 int i;
 for (i = 0; i < 4; i++) {
  if (!drx[i]) {
   return i;
  }
 }
 return -1;
}
