
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* command; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;


 int EOF ;
 int MAX_COMMAND_LINE ;
 int clearerr (int ) ;
 scalar_t__ feof (int ) ;
 int getchar () ;
 int printf (char*) ;
 int stdin ;
 int strcpy (int*,char*) ;

__attribute__((used)) static char*
get_command(mrb_state *mrb, mrdb_state *mrdb)
{
  int i;
  int c;

  for (i=0; i<MAX_COMMAND_LINE; i++) {
    if ((c=getchar()) == EOF || c == '\n') break;
    mrdb->command[i] = c;
  }

  if (i == 0 && feof(stdin)) {
    clearerr(stdin);
    strcpy(mrdb->command, "quit");
    i += sizeof("quit") - 1;
  }

  if (i == MAX_COMMAND_LINE) {
    for ( ; (c=getchar()) != EOF && c !='\n'; i++) ;
  }

  if (i > MAX_COMMAND_LINE) {
    printf("command line too long.\n");
    i = 0;
  }
  mrdb->command[i] = '\0';

  return mrdb->command;
}
