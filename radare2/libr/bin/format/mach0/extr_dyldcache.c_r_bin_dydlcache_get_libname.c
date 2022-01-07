
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_dyldcache_lib_t {char* path; } ;


 char* strchr (char*,char) ;
 int strlen (char*) ;

void r_bin_dydlcache_get_libname(struct r_bin_dyldcache_lib_t *lib, char **libname) {
 char *cur = lib->path;
 char *res = lib->path;
 int path_length = strlen (lib->path);
 while (cur < cur + path_length - 1) {
  cur = strchr (cur, '/');
  if (!cur) {
   break;
  }
  cur++;
  res = cur;
 }
 *libname = res;
}
