
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int drxt ;


 size_t DR_CONTROL ;




 int I386_DR_GET_RW_LEN (int ,int) ;
 int I386_DR_IS_ENABLED (int ,int) ;
 int I386_DR_IS_LOCAL_ENABLED (int ,int) ;

ut64 drx_get(drxt *drx, int n, int *rwx, int *len, int *global, int *enabled) {
 int ret = I386_DR_GET_RW_LEN (drx[DR_CONTROL], n);
 if (global) {
  *global = I386_DR_IS_LOCAL_ENABLED (drx[7], n);
 }
 if (len) {
  switch (ret & 0xA) {
  case 131: *len = 1; break;
  case 130: *len = 2; break;
  case 129: *len = 4; break;
  case 128: *len = 8; break;
  default: *len = 0; break;
  }
 }
 if (enabled) {
  *enabled = I386_DR_IS_ENABLED (drx[7], n);
 }
 if (rwx) {
  *rwx = ret & 0x3;
 }
 return (ut64) drx[n];
}
