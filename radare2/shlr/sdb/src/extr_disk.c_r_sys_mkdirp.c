
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DIRSEP ;
 int eprintf (char*,char*,char*) ;
 int r_sys_mkdir (char*) ;
 scalar_t__ r_sys_mkdir_failed () ;
 char* strchr (char*,char const) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static inline int r_sys_mkdirp(char *dir) {
 int ret = 1;
 const char slash = DIRSEP;
 char *path = dir;
 char *ptr = path;
 if (*ptr == slash) {
  ptr++;
 }






 while ((ptr = strchr (ptr, slash))) {
  *ptr = 0;
  if (!r_sys_mkdir (path) && r_sys_mkdir_failed ()) {
   eprintf ("r_sys_mkdirp: fail '%s' of '%s'\n", path, dir);
   *ptr = slash;
   return 0;
  }
  *ptr = slash;
  ptr++;
 }
 return ret;
}
