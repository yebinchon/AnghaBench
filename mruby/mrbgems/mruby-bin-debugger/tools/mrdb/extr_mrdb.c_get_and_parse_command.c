
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int wcnt; char** words; TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
typedef int mrb_state ;
typedef int debug_command ;
struct TYPE_6__ {char* prvfile; int prvline; } ;


 int fflush (int ) ;
 char* get_command (int *,TYPE_2__*) ;
 int * parse_command (int *,TYPE_2__*,char*) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int stdout ;

__attribute__((used)) static debug_command*
get_and_parse_command(mrb_state *mrb, mrdb_state *mrdb)
{
  debug_command *cmd = ((void*)0);
  char *p;
  int i;

  while (!cmd) {
    for (p=((void*)0); !p || *p=='\0'; ) {
      printf("(%s:%d) ", mrdb->dbg->prvfile, mrdb->dbg->prvline);
      fflush(stdout);
      p = get_command(mrb, mrdb);
    }

    cmd = parse_command(mrb, mrdb, p);





    if (!cmd) {
      printf("invalid command (");
      for (i=0; i<mrdb->wcnt; i++) {
        if (i>0) {
          printf(" ");
        }
        printf("%s", mrdb->words[i]);
      }
      puts(")");
    }
  }
  return cmd;
}
