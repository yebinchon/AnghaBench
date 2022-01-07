
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_mem ;
typedef int cl_device_id ;
typedef int cl_context ;
typedef int VisionBuf ;


 int visionbuf_allocate (size_t) ;
 int visionbuf_to_cl (int *,int ,int ) ;

VisionBuf visionbuf_allocate_cl(size_t len, cl_device_id device_id, cl_context ctx, cl_mem *out_mem) {
  VisionBuf r = visionbuf_allocate(len);
  *out_mem = visionbuf_to_cl(&r, device_id, ctx);
  return r;
}
