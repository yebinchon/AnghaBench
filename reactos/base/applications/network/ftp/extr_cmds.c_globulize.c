
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blkfree (char**) ;
 int doglob ;
 int fflush (int ) ;
 int free (char*) ;
 char** glob (char const*) ;
 char* globerr ;
 int printf (char*,char const*,char*) ;
 int stdout ;

int globulize(const char **cpp)
{
 char **globbed;

 if (!doglob)
  return (1);
 globbed = glob(*cpp);
 if (globerr != ((void*)0)) {
  printf("%s: %s\n", *cpp, globerr);
  (void) fflush(stdout);
  if (globbed) {
   blkfree(globbed);
   free((char *)globbed);
  }
  return (0);
 }
 if (globbed) {
  *cpp = *globbed++;

  if (*globbed) {
   blkfree(globbed);
   free((char *)globbed);
  }
 }
 return (1);
}
