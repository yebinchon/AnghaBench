
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * Redirections; struct TYPE_6__* Next; struct TYPE_6__* Subcommands; int Type; } ;
typedef int REDIRECTION ;
typedef TYPE_1__ PARSED_COMMAND ;


 int C_BLOCK ;
 int C_OP_LOWEST ;
 scalar_t__ CurrentTokenType ;
 int FreeCommand (TYPE_1__*) ;
 int FreeRedirection (int *) ;
 int InsideBlock ;
 int ParseChar () ;
 TYPE_1__* ParseCommandOp (int ) ;
 int ParseError () ;
 int ParseRedirection (int **) ;
 scalar_t__ ParseToken (int ,int ) ;
 int STANDARD_SEPS ;
 scalar_t__ TOK_END_BLOCK ;
 scalar_t__ TOK_REDIRECTION ;
 int WARN (char*) ;
 scalar_t__ bParseError ;
 TYPE_1__* cmd_alloc (int) ;

__attribute__((used)) static PARSED_COMMAND *ParseBlock(REDIRECTION *RedirList)
{
    PARSED_COMMAND *Cmd, *Sub, **NextPtr;

    Cmd = cmd_alloc(sizeof(PARSED_COMMAND));
    if (!Cmd)
    {
        WARN("Cannot allocate memory for Cmd!\n");
        ParseError();
        FreeRedirection(RedirList);
        return ((void*)0);
    }
    Cmd->Type = C_BLOCK;
    Cmd->Next = ((void*)0);
    Cmd->Subcommands = ((void*)0);
    Cmd->Redirections = RedirList;


    NextPtr = &Cmd->Subcommands;
    InsideBlock++;
    while (1)
    {
        Sub = ParseCommandOp(C_OP_LOWEST);
        if (Sub)
        {
            *NextPtr = Sub;
            NextPtr = &Sub->Next;
        }
        else if (bParseError)
        {
            InsideBlock--;
            FreeCommand(Cmd);
            return ((void*)0);
        }

        if (CurrentTokenType == TOK_END_BLOCK)
            break;


        ParseChar();
    }
    InsideBlock--;


    while (ParseToken(0, STANDARD_SEPS) == TOK_REDIRECTION)
    {
        if (!ParseRedirection(&Cmd->Redirections))
        {
            FreeCommand(Cmd);
            return ((void*)0);
        }
    }
    return Cmd;
}
