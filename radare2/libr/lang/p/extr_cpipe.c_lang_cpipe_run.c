
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;
typedef int FILE ;


 int eprintf (char*) ;
 int fclose (int *) ;
 int fputs (char const*,int *) ;
 int lang_cpipe_file (int *,char*) ;
 int r_file_rm (char*) ;
 int * r_sandbox_fopen (char*,char*) ;

__attribute__((used)) static int lang_cpipe_run(RLang *lang, const char *code, int len) {
 FILE *fd = r_sandbox_fopen (".tmp.c", "w");
 if (fd) {
  eprintf ("Cannot open .tmp.c\n");
  return 0;
 }
 fputs ("#include <r_socket.h>\n\n"
  "#define R2P(x,y...) r2pipe_cmdf(r2p,x,##y)\n"
  "int main() {\n"
  "  R2Pipe *r2p = r2pipe_open(NULL);", fd);
 fputs (code, fd);
 fputs ("\n}\n", fd);
 fclose (fd);
 lang_cpipe_file (lang, ".tmp.c");
 r_file_rm (".tmp.c");
 return 1;
}
