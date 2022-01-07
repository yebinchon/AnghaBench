
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef int drxt ;


 size_t DR_CONTROL ;
 int DR_NADDR ;
 int I386_DR_CONTROL_MASK ;
 int I386_DR_DISABLE (int ,int) ;
 int I386_DR_GLOBAL_ENABLE (int ,int) ;
 int I386_DR_LOCAL_ENABLE (int ,int) ;
 int I386_DR_SET_RW_LEN (int ,int,int) ;
 int eprintf (char*,int) ;

int drx_set(drxt *drx, int n, ut64 addr, int len, int rwx, int global) {
 ut32 control = drx[DR_CONTROL];
 if (n < 0 || n >= DR_NADDR) {
  eprintf ("Invalid DRX index (0-%d)\n", DR_NADDR - 1);
  return 0;
 }
 switch (rwx) {
 case 1: rwx = 0; break;
 case 2: rwx = 1; break;
 case 4: rwx = 3; break;
 default:
  rwx = 0;
 }
 switch (len) {
 case 1: len = 0; break;
 case 2: len = 1 << 2; break;
 case 4: len = 3 << 2; break;
 case 8: len = 2 << 2; break;
 case -1:
 {
  I386_DR_DISABLE (control, n);
  control &= I386_DR_CONTROL_MASK;
  drx[DR_CONTROL] = control;
  drx[n] = 0;
  return 1;
 }
 default:
  eprintf ("Invalid DRX length (%d) must be 1, 2, 4, 8 bytes\n", len);
  return 0;
 }
 I386_DR_SET_RW_LEN (control, n, len | rwx);
 if (global) {
  I386_DR_GLOBAL_ENABLE (control, n);

 } else {
  I386_DR_LOCAL_ENABLE (control, n);

 }
 control &= I386_DR_CONTROL_MASK;
 drx[n] = addr;

 drx[DR_CONTROL] = control;

 return 1;
}
