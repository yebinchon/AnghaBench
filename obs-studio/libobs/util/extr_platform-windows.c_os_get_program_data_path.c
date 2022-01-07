
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_COMMON_APPDATA ;
 int os_get_path_internal (char*,size_t,char const*,int ) ;

int os_get_program_data_path(char *dst, size_t size, const char *name)
{
 return os_get_path_internal(dst, size, name, CSIDL_COMMON_APPDATA);
}
