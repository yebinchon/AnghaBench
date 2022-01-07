
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvenc_lib ;
 int os_dlopen (char*) ;

bool load_nvenc_lib(void)
{
 if (sizeof(void *) == 8) {
  nvenc_lib = os_dlopen("nvEncodeAPI64.dll");
 } else {
  nvenc_lib = os_dlopen("nvEncodeAPI.dll");
 }

 return !!nvenc_lib;
}
