
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;
typedef int args ;
struct TYPE_4__ {int width; int height; int rgb_to_yuv_krnl; } ;
typedef TYPE_1__ RGBToYUVState ;


 int CLU_LOAD_FROM_FILE (int ,int ,char*,char*) ;
 int assert (int) ;
 int clCreateKernel (int ,char*,int*) ;
 int clReleaseProgram (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int) ;

void rgb_to_yuv_init(RGBToYUVState* s, cl_context ctx, cl_device_id device_id, int width, int height, int rgb_stride) {
  int err = 0;
  memset(s, 0, sizeof(*s));
  assert(width % 2 == 0);
  assert(height % 2 == 0);
  s->width = width;
  s->height = height;
  char args[1024];
  snprintf(args, sizeof(args),
           "-cl-fast-relaxed-math -cl-denorms-are-zero "



           "-DWIDTH=%d -DHEIGHT=%d -DUV_WIDTH=%d -DUV_HEIGHT=%d -DRGB_STRIDE=%d -DRGB_SIZE=%d",
           width, height, width/ 2, height / 2, rgb_stride, width * height);
  cl_program prg = CLU_LOAD_FROM_FILE(ctx, device_id, "transforms/rgb_to_yuv.cl", args);

  s->rgb_to_yuv_krnl = clCreateKernel(prg, "rgb_to_yuv", &err);
  assert(err == 0);

  err = clReleaseProgram(prg);
  assert(err == 0);
}
