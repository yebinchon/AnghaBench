
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int (* fn ) (int,char**) ;int name; } ;


 int dbg (char*,int ) ;
 int stub1 (int,char**) ;

__attribute__((used)) static int run_command(const struct command *cmd, int argc, char *argv[])
{
 dbg("running command: `%s'", cmd->name);
 return cmd->fn(argc, argv);
}
