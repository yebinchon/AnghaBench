
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cl_mem ;
typedef int cl_int ;
typedef int cl_command_queue ;
struct TYPE_3__ {int width; int height; int loaduv_krnl; int loadys_krnl; } ;
typedef TYPE_1__ LoadYUVState ;


 int assert (int) ;
 int clEnqueueNDRangeKernel (int ,int ,int,int *,size_t const*,int *,int ,int ,int *) ;
 int clSetKernelArg (int ,int,int,int*) ;

void loadyuv_queue(LoadYUVState* s, cl_command_queue q,
                   cl_mem y_cl, cl_mem u_cl, cl_mem v_cl,
                   cl_mem out_cl) {
  int err = 0;

  err = clSetKernelArg(s->loadys_krnl, 0, sizeof(cl_mem), &y_cl);
  assert(err == 0);
  err = clSetKernelArg(s->loadys_krnl, 1, sizeof(cl_mem), &out_cl);
  assert(err == 0);

  const size_t loadys_work_size = (s->width*s->height)/8;
  err = clEnqueueNDRangeKernel(q, s->loadys_krnl, 1, ((void*)0),
                               &loadys_work_size, ((void*)0), 0, 0, ((void*)0));
  assert(err == 0);

  const size_t loaduv_work_size = ((s->width/2)*(s->height/2))/8;
  cl_int loaduv_out_off = (s->width*s->height);

  err = clSetKernelArg(s->loaduv_krnl, 0, sizeof(cl_mem), &u_cl);
  assert(err == 0);
  err = clSetKernelArg(s->loaduv_krnl, 1, sizeof(cl_mem), &out_cl);
  assert(err == 0);
  err = clSetKernelArg(s->loaduv_krnl, 2, sizeof(cl_int), &loaduv_out_off);
  assert(err == 0);

  err = clEnqueueNDRangeKernel(q, s->loaduv_krnl, 1, ((void*)0),
                               &loaduv_work_size, ((void*)0), 0, 0, ((void*)0));
  assert(err == 0);

  loaduv_out_off += (s->width/2)*(s->height/2);

  err = clSetKernelArg(s->loaduv_krnl, 0, sizeof(cl_mem), &v_cl);
  assert(err == 0);
  err = clSetKernelArg(s->loaduv_krnl, 1, sizeof(cl_mem), &out_cl);
  assert(err == 0);
  err = clSetKernelArg(s->loaduv_krnl, 2, sizeof(cl_int), &loaduv_out_off);
  assert(err == 0);

  err = clEnqueueNDRangeKernel(q, s->loaduv_krnl, 1, ((void*)0),
                               &loaduv_work_size, ((void*)0), 0, 0, ((void*)0));
  assert(err == 0);
}
