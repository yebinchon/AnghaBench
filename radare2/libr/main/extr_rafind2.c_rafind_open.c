
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;


 int free (char*) ;
 scalar_t__ r_file_is_directory (char const*) ;
 scalar_t__ r_stdin_slurp (int*) ;
 char* r_str_newf (char*,int) ;
 int rafind_open_dir (char const*) ;
 int rafind_open_file (char const*,char*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int rafind_open(const char *file) {
 if (!strcmp (file, "-")) {
  int sz = 0;
  ut8 *buf = (ut8 *)r_stdin_slurp (&sz);
  char *ff = r_str_newf ("malloc://%d", sz);
  int res = rafind_open_file (ff, buf, sz);
  free (ff);
  free (buf);
  return res;
 }
 return r_file_is_directory (file)
  ? rafind_open_dir (file)
  : rafind_open_file (file, ((void*)0), -1);
}
