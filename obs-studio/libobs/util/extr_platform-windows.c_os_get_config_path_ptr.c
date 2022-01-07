
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_APPDATA ;
 char* os_get_path_ptr_internal (char const*,int ) ;

char *os_get_config_path_ptr(const char *name)
{
 return os_get_path_ptr_internal(name, CSIDL_APPDATA);
}
