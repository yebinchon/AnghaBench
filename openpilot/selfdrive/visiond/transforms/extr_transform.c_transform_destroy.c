
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int krnl; int m_uv_cl; int m_y_cl; } ;
typedef TYPE_1__ Transform ;


 int assert (int) ;
 int clReleaseKernel (int ) ;
 int clReleaseMemObject (int ) ;

void transform_destroy(Transform* s) {
  int err = 0;

  err = clReleaseMemObject(s->m_y_cl);
  assert(err == 0);
  err = clReleaseMemObject(s->m_uv_cl);
  assert(err == 0);

  err = clReleaseKernel(s->krnl);
  assert(err == 0);
}
