
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* R_EGG_INCDIR_ENV ;
 int free (char*) ;
 scalar_t__ r_file_exists (char*) ;
 char* r_str_appendf (int *,char*,char*,char const*,...) ;
 char* r_sys_getenv (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *find_include(const char *prefix, const char *file) {
 char *pfx = ((void*)0), *ret = ((void*)0), *env = r_sys_getenv (R_EGG_INCDIR_ENV);
 if (!prefix) {
  prefix = "";
 }
 if (*prefix == '$') {
  char *out = r_sys_getenv (prefix + 1);
  pfx = out? out: strdup ("");
 } else {
  pfx = strdup (prefix);
  if (!pfx) {
   free (env);
   return ((void*)0);
  }
 }

 if (env) {
  char *str, *ptr = strchr (env, ':');

  str = env;
  while (str) {
   if (ptr) {
    *ptr = 0;
   }
   free (ret);
   ret = r_str_appendf (((void*)0), "%s/%s", pfx, file);
   {
    char *filepath = r_str_appendf (((void*)0), "%s/%s/%s", str, pfx, file);

    if (r_file_exists (filepath)) {
     free (env);
     free (pfx);
     free (ret);
     return filepath;
    }
    free (filepath);
   }
   if (!ptr) {
    break;
   }
   str = ptr + 1;
   ptr = strchr (str, ':');
  }
  free (env);
 } else {
  ret = r_str_appendf (((void*)0), "%s/%s", pfx, file);
 }
 free (pfx);
 return ret;
}
