
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*) ;
 int nvenc_lib ;
 void* os_dlsym (int ,char const*) ;

__attribute__((used)) static void *load_nv_func(const char *func)
{
 void *func_ptr = os_dlsym(nvenc_lib, func);
 if (!func_ptr) {
  error("Could not load function: %s", func);
 }
 return func_ptr;
}
