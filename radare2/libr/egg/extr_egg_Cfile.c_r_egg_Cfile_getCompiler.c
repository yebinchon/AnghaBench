
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 int free (char*) ;
 char* r_file_path (char const*) ;
 char* r_sys_getenv (char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char* r_egg_Cfile_getCompiler(void) {
 size_t i;
 const char *compilers[] = {"llvm-gcc", "clang", "gcc"};
 char *output = r_sys_getenv ("CC");

 if (output) {
  return output;
 }

 for (i = 0; i < 3; i++) {
  output = r_file_path (compilers[i]);
  if (strcmp (output, compilers[i])) {
   free (output);
   return strdup (compilers[i]);
  }
  free (output);
 }

 eprintf ("Couldn't find a compiler ! Please, set CC.\n");
 return ((void*)0);
}
