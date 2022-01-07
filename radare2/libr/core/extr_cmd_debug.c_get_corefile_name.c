
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* r_str_newf (char*,int) ;
 char* r_str_trim_dup (char const*) ;

__attribute__((used)) static char *get_corefile_name (const char *raw_name, int pid) {
 return (!*raw_name)?
  r_str_newf ("core.%u", pid) :
  r_str_trim_dup (raw_name);
}
