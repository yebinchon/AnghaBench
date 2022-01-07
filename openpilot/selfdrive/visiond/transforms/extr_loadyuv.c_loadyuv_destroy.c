
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loaduv_krnl; int loadys_krnl; } ;
typedef TYPE_1__ LoadYUVState ;


 int assert (int) ;
 int clReleaseKernel (int ) ;

void loadyuv_destroy(LoadYUVState* s) {
  int err = 0;

  err = clReleaseKernel(s->loadys_krnl);
  assert(err == 0);
  err = clReleaseKernel(s->loaduv_krnl);
  assert(err == 0);
}
