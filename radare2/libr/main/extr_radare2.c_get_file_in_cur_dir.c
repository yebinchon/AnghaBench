
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* r_file_abspath (char const*) ;
 char* r_file_basename (char const*) ;
 scalar_t__ r_file_exists (char const*) ;
 int r_file_is_directory (char const*) ;

__attribute__((used)) static char* get_file_in_cur_dir(const char *filepath) {
 filepath = r_file_basename (filepath);
 if (r_file_exists (filepath) && !r_file_is_directory (filepath)) {
  return r_file_abspath (filepath);
 }
 return ((void*)0);
}
