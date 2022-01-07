
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_mem ;
typedef int cl_device_id ;
typedef int cl_context ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ VisionBuf ;


 TYPE_1__ visionbuf_allocate_cl (int ,int ,int ,int *) ;

cl_mem visionbuf_to_cl(const VisionBuf* buf, cl_device_id device_id, cl_context ctx) {

  VisionBuf *w_buf = (VisionBuf*)buf;
  cl_mem ret;
  *w_buf = visionbuf_allocate_cl(buf->len, device_id, ctx, &ret);
  return ret;
}
