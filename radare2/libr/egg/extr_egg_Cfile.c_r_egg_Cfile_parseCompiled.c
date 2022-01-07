
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int eprintf (char*,char const*) ;
 int free (char*) ;
 int r_file_dump (char*,int const*,int ,int) ;
 char* r_file_slurp (char*,int *) ;
 char* r_str_newf (char*,char const*) ;
 char* r_str_replace (char*,char*,char*,int) ;
 int r_str_stripLine (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static bool r_egg_Cfile_parseCompiled(const char *file) {
 char *fileExt = r_str_newf ("%s.tmp", file);
 char *buffer = r_file_slurp (fileExt, ((void*)0));

 buffer = r_str_replace (buffer, "rdata", "text", 0);
 buffer = r_str_replace (buffer, "rodata", "text", 0);
 buffer = r_str_replace (buffer, "get_pc_thunk.bx", "__getesp__", 1);

 const char *words[] = {".cstring", "size", "___main", "section", "__alloca", "zero", "cfi"};
 size_t i;
 for (i = 0; i < 7; i++) {
  r_str_stripLine (buffer, words[i]);
 }

 free (fileExt);
 fileExt = r_str_newf ("%s.s", file);
 if (!r_file_dump (fileExt, (const ut8*) buffer, strlen (buffer), 1)) {
  eprintf ("Error while opening %s.s\n", file);
  goto fail;
 }

 free (buffer);
 free (fileExt);
 return 1;

fail:
 free (buffer);
 free (fileExt);
 return 0;
}
