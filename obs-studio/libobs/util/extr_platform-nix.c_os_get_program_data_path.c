
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*) ;

int os_get_program_data_path(char *dst, size_t size, const char *name)
{
 return snprintf(dst, size, "/usr/local/share/%s", !!name ? name : "");
}
