
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int r_cons_printf (char*,char const*) ;
 char* r_file_path (char const*) ;

__attribute__((used)) static void check_decompiler(const char* name) {
 char *path = r_file_path (name);
 if (path && path[0] == '/') {
  r_cons_printf ("!*%s\n", name);
 }
 free (path);
}
