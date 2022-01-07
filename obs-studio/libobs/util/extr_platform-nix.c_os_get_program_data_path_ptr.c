
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bmalloc (size_t) ;
 size_t snprintf (char*,size_t,char*,char const*) ;

char *os_get_program_data_path_ptr(const char *name)
{
 size_t len =
  snprintf(((void*)0), 0, "/usr/local/share/%s", !!name ? name : "");
 char *str = bmalloc(len + 1);
 snprintf(str, len + 1, "/usr/local/share/%s", !!name ? name : "");
 str[len] = 0;
 return str;
}
