
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cl_mem ;
typedef int cl_event ;
typedef int cl_command_queue ;
struct TYPE_3__ {int width; int height; int rgb_to_yuv_krnl; } ;
typedef TYPE_1__ RGBToYUVState ;


 int assert (int) ;
 int clEnqueueNDRangeKernel (int ,int ,int,int *,size_t const*,int *,int ,int ,int *) ;
 int clReleaseEvent (int ) ;
 int clSetKernelArg (int ,int,int,int *) ;
 int clWaitForEvents (int,int *) ;

void rgb_to_yuv_queue(RGBToYUVState* s, cl_command_queue q, cl_mem rgb_cl, cl_mem yuv_cl) {
  int err = 0;
  err = clSetKernelArg(s->rgb_to_yuv_krnl, 0, sizeof(cl_mem), &rgb_cl);
  assert(err == 0);
  err = clSetKernelArg(s->rgb_to_yuv_krnl, 1, sizeof(cl_mem), &yuv_cl);
  assert(err == 0);
  const size_t work_size[2] = {
    (size_t)(s->width + (s->width % 4 == 0 ? 0 : (4 - s->width % 4))) / 4,
    (size_t)(s->height + (s->height % 4 == 0 ? 0 : (4 - s->height % 4))) / 4
  };
  cl_event event;
  err = clEnqueueNDRangeKernel(q, s->rgb_to_yuv_krnl, 2, ((void*)0), &work_size[0], ((void*)0), 0, 0, &event);
  assert(err == 0);
  clWaitForEvents(1, &event);
  clReleaseEvent(event);
}
