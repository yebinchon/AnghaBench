
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* ident; } ;
typedef TYPE_1__* MemoryContext ;


 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int pg_mbcliplen (char const*,int,int) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
MemoryContextStatsPrint(MemoryContext context, void *passthru,
      const char *stats_string)
{
 int level = *(int *) passthru;
 const char *name = context->name;
 const char *ident = context->ident;
 int i;






 if (ident && strcmp(name, "dynahash") == 0)
 {
  name = ident;
  ident = ((void*)0);
 }

 for (i = 0; i < level; i++)
  fprintf(stderr, "  ");
 fprintf(stderr, "%s: %s", name, stats_string);
 if (ident)
 {






  int idlen = strlen(ident);
  bool truncated = 0;

  if (idlen > 100)
  {
   idlen = pg_mbcliplen(ident, idlen, 100);
   truncated = 1;
  }
  fprintf(stderr, ": ");
  while (idlen-- > 0)
  {
   unsigned char c = *ident++;

   if (c < ' ')
    c = ' ';
   fputc(c, stderr);
  }
  if (truncated)
   fprintf(stderr, "...");
 }
 fputc('\n', stderr);
}
