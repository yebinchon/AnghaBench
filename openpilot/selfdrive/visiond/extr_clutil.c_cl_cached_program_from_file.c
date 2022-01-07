
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cl_program ;
typedef int cl_device_id ;
typedef int cl_context ;


 int assert (char*) ;
 int cl_cached_program_from_string (int ,int ,char*,char const*,int *) ;
 int free (char*) ;
 char* read_file (char const*,int *) ;

cl_program cl_cached_program_from_file(cl_context ctx, cl_device_id device_id, const char* path, const char* args,
                                       uint64_t *out_hash) {
  char* src_buf = read_file(path, ((void*)0));
  assert(src_buf);
  cl_program ret = cl_cached_program_from_string(ctx, device_id, src_buf, args, out_hash);
  free(src_buf);
  return ret;
}
