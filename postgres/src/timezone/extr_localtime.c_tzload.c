
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union local_storage {int dummy; } local_storage ;
struct state {int dummy; } ;


 int errno ;
 int free (union local_storage*) ;
 union local_storage* malloc (int) ;
 int tzloadbody (char const*,char*,struct state*,int,union local_storage*) ;

int
tzload(const char *name, char *canonname, struct state *sp, bool doextend)
{
 union local_storage *lsp = malloc(sizeof *lsp);

 if (!lsp)
  return errno;
 else
 {
  int err = tzloadbody(name, canonname, sp, doextend, lsp);

  free(lsp);
  return err;
 }
}
