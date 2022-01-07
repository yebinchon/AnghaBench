
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Rest; int First; } ;
struct TYPE_9__ {int Type; int Redirections; struct TYPE_9__* Next; struct TYPE_9__* Subcommands; TYPE_1__ Command; } ;
typedef TYPE_2__ PARSED_COMMAND ;
typedef int LPTSTR ;
typedef int INT ;
 int DoCommand (int ,int ,TYPE_2__*) ;
 int DoDelayedExpansion (int ) ;
 int ExecuteFor (TYPE_2__*) ;
 int ExecuteIf (TYPE_2__*) ;
 int ExecutePipeline (TYPE_2__*) ;
 int PerformRedirection (int ) ;
 int UndoRedirection (int ,int *) ;
 int cmd_free (int ) ;
 int nErrorLevel ;

INT
ExecuteCommand(PARSED_COMMAND *Cmd)
{
    PARSED_COMMAND *Sub;
    LPTSTR First, Rest;
    INT Ret = 0;

    if (!PerformRedirection(Cmd->Redirections))
        return 1;

    switch (Cmd->Type)
    {
    case 135:
        Ret = 1;
        First = DoDelayedExpansion(Cmd->Command.First);
        if (First)
        {
            Rest = DoDelayedExpansion(Cmd->Command.Rest);
            if (Rest)
            {
                Ret = DoCommand(First, Rest, Cmd);
                cmd_free(Rest);
            }
            cmd_free(First);
        }
        break;
    case 128:
    case 136:
    case 130:
        for (Sub = Cmd->Subcommands; Sub; Sub = Sub->Next)
            Ret = ExecuteCommand(Sub);
        break;
    case 132:
        Sub = Cmd->Subcommands;
        Ret = ExecuteCommand(Sub);
        if (Ret != 0)
        {
            nErrorLevel = Ret;
            Ret = ExecuteCommand(Sub->Next);
        }
        break;
    case 131:
        Sub = Cmd->Subcommands;
        Ret = ExecuteCommand(Sub);
        if (Ret == 0)
            Ret = ExecuteCommand(Sub->Next);
        break;
    case 129:
        Ret = ExecutePipeline(Cmd);
        break;
    case 133:
        Ret = ExecuteIf(Cmd);
        break;
    case 134:
        Ret = ExecuteFor(Cmd);
        break;
    }

    UndoRedirection(Cmd->Redirections, ((void*)0));
    return Ret;
}
