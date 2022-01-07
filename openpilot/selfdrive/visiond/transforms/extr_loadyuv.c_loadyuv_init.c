
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;
typedef int args ;
struct TYPE_4__ {int width; int height; void* loaduv_krnl; void* loadys_krnl; } ;
typedef TYPE_1__ LoadYUVState ;


 int CLU_LOAD_FROM_FILE (int ,int ,char*,char*) ;
 int assert (int) ;
 void* clCreateKernel (int ,char*,int*) ;
 int clReleaseProgram (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (char*,int,char*,int,int) ;

void loadyuv_init(LoadYUVState* s, cl_context ctx, cl_device_id device_id, int width, int height) {
  int err = 0;
  memset(s, 0, sizeof(*s));

  s->width = width;
  s->height = height;

  char args[1024];
  snprintf(args, sizeof(args),
           "-cl-fast-relaxed-math -cl-denorms-are-zero "
           "-DTRANSFORMED_WIDTH=%d -DTRANSFORMED_HEIGHT=%d",
           width, height);
  cl_program prg = CLU_LOAD_FROM_FILE(ctx, device_id, "transforms/loadyuv.cl", args);

  s->loadys_krnl = clCreateKernel(prg, "loadys", &err);
  assert(err == 0);
  s->loaduv_krnl = clCreateKernel(prg, "loaduv", &err);
  assert(err == 0);


  err = clReleaseProgram(prg);
  assert(err == 0);
}
