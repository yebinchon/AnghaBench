
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RLang ;
typedef int FILE ;


 int eprintf (char*) ;
 int fclose (int *) ;
 int fputs (char const*,int *) ;
 int lang_v_file (int *,char*) ;
 char* r2v ;
 int r_file_rm (char*) ;
 int * r_sandbox_fopen (char*,char*) ;
 char* vsk ;

__attribute__((used)) static int __run(RLang *lang, const char *code, int len) {
 FILE *fd = r_sandbox_fopen (".tmp.v", "w");
 if (fd) {
  fputs (r2v, fd);
  if (len < 0) {
   fputs (code, fd);
  } else {
   fputs (vsk, fd);
   fputs (code, fd);
   fputs ("}", fd);
  }
  fclose (fd);
  lang_v_file (lang, ".tmp.v");
  r_file_rm (".tmp.v");
  return 1;
 }
 eprintf ("Cannot open .tmp.v\n");
 return 0;
}
