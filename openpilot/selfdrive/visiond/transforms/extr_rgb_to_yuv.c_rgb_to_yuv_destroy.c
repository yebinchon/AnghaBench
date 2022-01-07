
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rgb_to_yuv_krnl; } ;
typedef TYPE_1__ RGBToYUVState ;


 int assert (int) ;
 int clReleaseKernel (int ) ;

void rgb_to_yuv_destroy(RGBToYUVState* s) {
  int err = 0;
  err = clReleaseKernel(s->rgb_to_yuv_krnl);
  assert(err == 0);
}
