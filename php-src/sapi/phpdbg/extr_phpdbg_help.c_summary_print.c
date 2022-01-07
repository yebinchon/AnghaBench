
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tip; int alias; int name; } ;
typedef TYPE_1__ phpdbg_command_t ;


 int efree (char*) ;
 int pretty_print (char*) ;
 int spprintf (char**,int ,char*,int ,int ,int ) ;

void summary_print(phpdbg_command_t const * const cmd)
{
 char *summary;
 spprintf(&summary, 0, "Command: **%s**  Alias: **%c**  **%s**\n", cmd->name, cmd->alias, cmd->tip);
 pretty_print(summary);
 efree(summary);
}
