
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drxt ;


 size_t DR_CONTROL ;
 int I386_DR_DISABLE (int ,int) ;
 int I386_DR_ENABLE (int ,int) ;

void drx_enable(drxt *r, int n, int enabled) {
 if (enabled) {
  I386_DR_ENABLE (r[DR_CONTROL], n);
 } else {
  I386_DR_DISABLE (r[DR_CONTROL], n);
 }
}
