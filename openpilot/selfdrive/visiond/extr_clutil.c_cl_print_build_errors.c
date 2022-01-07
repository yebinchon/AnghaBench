
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_build_status ;


 int CL_PROGRAM_BUILD_LOG ;
 int CL_PROGRAM_BUILD_STATUS ;
 int assert (char*) ;
 char* calloc (size_t,int) ;
 int clGetProgramBuildInfo (int ,int ,int ,size_t,...) ;
 int free (char*) ;
 int printf (char*,int,char*) ;

void cl_print_build_errors(cl_program program, cl_device_id device) {
  cl_build_status status;
  clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_STATUS,
          sizeof(cl_build_status), &status, ((void*)0));

  size_t log_size;
  clGetProgramBuildInfo(program, device,
          CL_PROGRAM_BUILD_LOG, 0, ((void*)0), &log_size);

  char* log = calloc(log_size+1, 1);
  assert(log);

  clGetProgramBuildInfo(program, device,
          CL_PROGRAM_BUILD_LOG, log_size+1, log, ((void*)0));

  printf("build failed; status=%d, log:\n%s\n",
          status, log);

  free(log);
}
