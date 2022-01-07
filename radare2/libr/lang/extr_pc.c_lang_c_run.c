
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;
typedef int FILE ;


 int eprintf (char*) ;
 int fclose (int *) ;
 int fputs (char const*,int *) ;
 int lang_c_file (int *,char*) ;
 int r_file_rm (char*) ;
 int * r_sandbox_fopen (char*,char*) ;

__attribute__((used)) static int lang_c_run(RLang *lang, const char *code, int len) {
 FILE *fd = r_sandbox_fopen (".tmp.c", "w");
 if (fd) {
  fputs ("#include <r_core.h>\n\nvoid entry(RCore *core, int argc, const char **argv) {\n", fd);
  fputs (code, fd);
  fputs ("\n}\n", fd);
  fclose (fd);
  lang_c_file (lang, ".tmp.c");
  r_file_rm (".tmp.c");
 } else eprintf ("Cannot open .tmp.c\n");
 return 1;
}
