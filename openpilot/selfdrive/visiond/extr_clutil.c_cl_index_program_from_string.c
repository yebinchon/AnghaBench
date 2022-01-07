
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;


 int add_index (int ,int ) ;
 int cl_cached_program_from_string (int ,int ,char const*,char const*,int *) ;

cl_program cl_index_program_from_string(cl_context ctx, cl_device_id device_id,
                                        const char* src, const char* args,
                                        uint64_t index_hash) {
  uint64_t src_hash = 0;
  cl_program ret = cl_cached_program_from_string(ctx, device_id, src, args, &src_hash);

  add_index(index_hash, src_hash);

  return ret;
}
