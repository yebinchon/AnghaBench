
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int drxt ;


 scalar_t__ drx_get (int *,int,int*,int*,int*,int*) ;

int drx_get_at(drxt *drx, ut64 at_addr) {
 ut64 addr;
 int i, rwx, len, g, en;

 for (i = 0; i < 8; i++) {
  if (i == 4 || i == 5) {
   continue;
  }
  rwx = len = g = en = 0;
  addr = drx_get (drx, i, &rwx, &len, &g, &en);
  if (addr == at_addr) {
   return i;
  }
 }
 return -1;
}
