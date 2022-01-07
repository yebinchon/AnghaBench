
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;
typedef int FILE ;


 int eprintf (char*) ;
 int fclose (int *) ;
 int fputs (char const*,int *) ;
 int lang_vala_file (int *,char*,int) ;
 int r_file_rm (char*) ;
 int * r_sandbox_fopen (char*,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int lang_vala_run(RLang *lang, const char *code, int len) {
 bool silent = !strncmp (code, "-s", 2);
 FILE *fd = r_sandbox_fopen (".tmp.vala", "w");
 if (fd) {
  if (silent) {
   code += 2;
  }
  fputs ("using Radare;\n\npublic static void entry(RCore core) {\n", fd);
  fputs (code, fd);
  fputs (";\n}\n", fd);
  fclose (fd);
  lang_vala_file (lang, ".tmp.vala", silent);
  r_file_rm (".tmp.vala");
  return 1;
 }
 eprintf ("Cannot open .tmp.vala\n");
 return 0;
}
