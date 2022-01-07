
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* c_handler ) (scalar_t__,int *) ;scalar_t__ c_bell; scalar_t__ c_conn; } ;


 scalar_t__ bell ;
 int connected ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 scalar_t__ fromatty ;
 struct cmd* getcmd (int ) ;
 scalar_t__ gets (scalar_t__*) ;
 int help (scalar_t__,int *) ;
 scalar_t__* line ;
 int makeargv () ;
 scalar_t__ margc ;
 int * margv ;
 int printf (char*) ;
 int putchar (char) ;
 int quit (int ,int *) ;
 int stdin ;
 int stdout ;
 int stub1 (scalar_t__,int *) ;

void cmdscanner(int top)
{
 register struct cmd *c;

 if (!top)
  (void) putchar('\n');
 for (;;) {
  (void) fflush(stdout);
  if (fromatty) {
   printf("ftp> ");
   (void) fflush(stdout);
  }
  if (gets(line) == 0) {
   if (feof(stdin) || ferror(stdin))
    quit(0, ((void*)0));
   break;
  }
  if (line[0] == 0)
   break;
  makeargv();
  if (margc == 0) {
   continue;
  }
  c = getcmd(margv[0]);
  if (c == (struct cmd *)-1) {
   printf("?Ambiguous command\n");
   continue;
  }
  if (c == 0) {
   printf("?Invalid command\n");
   continue;
  }
  if (c->c_conn && !connected) {
   printf ("Not connected.\n");
   continue;
  }
  (*c->c_handler)(margc, margv);
  if (bell && c->c_bell)
   (void) putchar('\007');
  if (c->c_handler != help)
   break;
 }
 (void) fflush(stdout);


}
