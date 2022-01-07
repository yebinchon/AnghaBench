
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_5__ {TYPE_3__* Subcommands; } ;
typedef TYPE_1__ PARSED_COMMAND ;
typedef int INT ;


 scalar_t__ C_QUIET ;
 int ConOutChar (int ) ;
 int EchoCommand (TYPE_3__*) ;
 int ExecuteCommand (TYPE_3__*) ;
 int PrintPrompt () ;
 int _T (char) ;
 int bDisableBatchEcho ;
 scalar_t__ bEcho ;
 int bIgnoreEcho ;

__attribute__((used)) static INT RunInstance(PARSED_COMMAND *Cmd)
{
    if (bEcho && !bDisableBatchEcho && Cmd->Subcommands->Type != C_QUIET)
    {
        if (!bIgnoreEcho)
            ConOutChar(_T('\n'));
        PrintPrompt();
        EchoCommand(Cmd->Subcommands);
        ConOutChar(_T('\n'));
    }

    return ExecuteCommand(Cmd->Subcommands);
}
