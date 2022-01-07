
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;
struct TYPE_3__ {scalar_t__ index_hash; int * bin_data; int * bin_end; } ;


 int ARRAYSIZE (TYPE_1__*) ;
 int assert (int) ;
 int clBuildProgram (int ,int,int *,int *,int *,int *) ;
 int clCreateProgramWithBinary (int ,int,int *,size_t*,int const**,int *,int*) ;
 TYPE_1__* clu_index ;

cl_program cl_program_from_index(cl_context ctx, cl_device_id device_id, uint64_t index_hash) {
  int err;

  int i;
  for (i=0; i<ARRAYSIZE(clu_index); i++) {
    if (clu_index[i].index_hash == index_hash) {
      break;
    }
  }
  if (i >= ARRAYSIZE(clu_index)) {
    assert(0);
  }

  size_t bin_size = clu_index[i].bin_end - clu_index[i].bin_data;
  const uint8_t *bin_data = clu_index[i].bin_data;

  cl_program prg = clCreateProgramWithBinary(ctx, 1, &device_id, &bin_size, (const uint8_t**)&bin_data, ((void*)0), &err);
  assert(err == 0);

  err = clBuildProgram(prg, 1, &device_id, ((void*)0), ((void*)0), ((void*)0));
  assert(err == 0);

  return prg;
}
