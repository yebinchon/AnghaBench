
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_bool ;
struct TYPE_3__ {char* long_msg; } ;
typedef TYPE_1__ help_msg ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* get_help_msg (char*,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static mrb_bool
show_long_help(char *cmd1, char *cmd2)
{
  help_msg *help;

  if ((help = get_help_msg(cmd1, cmd2)) == ((void*)0)) {
    return FALSE;
  }
  printf("%s", help->long_msg);
  return TRUE;
}
