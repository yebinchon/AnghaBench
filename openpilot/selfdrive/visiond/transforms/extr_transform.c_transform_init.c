
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;
struct TYPE_4__ {void* m_uv_cl; void* m_y_cl; int krnl; } ;
typedef TYPE_1__ Transform ;


 int CLU_LOAD_FROM_FILE (int ,int ,char*,char*) ;
 int CL_MEM_READ_WRITE ;
 int assert (int) ;
 void* clCreateBuffer (int ,int ,int,int *,int*) ;
 int clCreateKernel (int ,char*,int*) ;
 int clReleaseProgram (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void transform_init(Transform* s, cl_context ctx, cl_device_id device_id) {
  int err = 0;
  memset(s, 0, sizeof(*s));

  cl_program prg = CLU_LOAD_FROM_FILE(ctx, device_id, "transforms/transform.cl", "");

  s->krnl = clCreateKernel(prg, "warpPerspective", &err);
  assert(err == 0);


  err = clReleaseProgram(prg);
  assert(err == 0);

  s->m_y_cl = clCreateBuffer(ctx, CL_MEM_READ_WRITE, 3*3*sizeof(float), ((void*)0), &err);
  assert(err == 0);

  s->m_uv_cl = clCreateBuffer(ctx, CL_MEM_READ_WRITE, 3*3*sizeof(float), ((void*)0), &err);
  assert(err == 0);
}
