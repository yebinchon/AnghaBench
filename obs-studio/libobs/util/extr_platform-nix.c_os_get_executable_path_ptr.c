
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;
typedef int ssize_t ;


 int PATH_MAX ;
 char* dirname (char*) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_init_copy (struct dstr*,char const*) ;
 int readlink (char*,char*,int) ;

char *os_get_executable_path_ptr(const char *name)
{
 char exe[PATH_MAX];
 ssize_t count = readlink("/proc/self/exe", exe, PATH_MAX);
 const char *path_out = ((void*)0);
 struct dstr path;

 if (count == -1) {
  return ((void*)0);
 }

 path_out = dirname(exe);
 if (!path_out) {
  return ((void*)0);
 }

 dstr_init_copy(&path, path_out);
 dstr_cat(&path, "/");

 if (name && *name) {
  dstr_cat(&path, name);
 }

 return path.array;
}
