
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t Operator; void* RightArg; void* LeftArg; int Flags; } ;
struct TYPE_10__ {TYPE_2__* Subcommands; TYPE_1__ If; int Type; } ;
struct TYPE_9__ {int * Next; } ;
typedef TYPE_3__ PARSED_COMMAND ;


 int C_IF ;
 int C_OP_LOWEST ;
 scalar_t__* CurrentToken ;
 int CurrentTokenType ;
 int FreeCommand (TYPE_3__*) ;
 int IFFLAG_IGNORECASE ;
 int IFFLAG_NEGATE ;
 size_t IF_MAX_COMPARISON ;
 size_t IF_MAX_UNARY ;
 int * IfOperatorString ;
 void* ParseCommandOp (int ) ;
 int ParseError () ;
 int ParseToken (int ,int ) ;
 int STANDARD_SEPS ;
 int TOK_NORMAL ;
 int WARN (char*) ;
 int _T (char*) ;
 scalar_t__ _tcsicmp (scalar_t__*,int ) ;
 scalar_t__ _tcsnicmp (scalar_t__*,int ,int) ;
 TYPE_3__* cmd_alloc (int) ;
 void* cmd_dup (scalar_t__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static PARSED_COMMAND *ParseIf(void)
{
    int Type;
    PARSED_COMMAND *Cmd;

    Cmd = cmd_alloc(sizeof(PARSED_COMMAND));
    if (!Cmd)
    {
        WARN("Cannot allocate memory for Cmd!\n");
        ParseError();
        return ((void*)0);
    }
    memset(Cmd, 0, sizeof(PARSED_COMMAND));
    Cmd->Type = C_IF;

    Type = CurrentTokenType;
    if (_tcsicmp(CurrentToken, _T("/I")) == 0)
    {
        Cmd->If.Flags |= IFFLAG_IGNORECASE;
        Type = ParseToken(0, STANDARD_SEPS);
    }
    if (_tcsicmp(CurrentToken, _T("not")) == 0)
    {
        Cmd->If.Flags |= IFFLAG_NEGATE;
        Type = ParseToken(0, STANDARD_SEPS);
    }

    if (Type != TOK_NORMAL)
    {
        FreeCommand(Cmd);
        ParseError();
        return ((void*)0);
    }


    for (; Cmd->If.Operator <= IF_MAX_UNARY; Cmd->If.Operator++)
    {
        if (_tcsicmp(CurrentToken, IfOperatorString[Cmd->If.Operator]) == 0)
        {
            if (ParseToken(0, STANDARD_SEPS) != TOK_NORMAL)
            {
                FreeCommand(Cmd);
                ParseError();
                return ((void*)0);
            }
            Cmd->If.RightArg = cmd_dup(CurrentToken);
            goto condition_done;
        }
    }



    Cmd->If.LeftArg = cmd_dup(CurrentToken);
    ParseToken(0, _T(",;"));


    if (_tcsnicmp(CurrentToken, _T("=="), 2) == 0 && CurrentToken[2])
    {
        Cmd->If.RightArg = cmd_dup(&CurrentToken[2]);
        goto condition_done;
    }

    for (; Cmd->If.Operator <= IF_MAX_COMPARISON; Cmd->If.Operator++)
    {
        if (_tcsicmp(CurrentToken, IfOperatorString[Cmd->If.Operator]) == 0)
        {
            if (ParseToken(0, STANDARD_SEPS) != TOK_NORMAL)
                break;
            Cmd->If.RightArg = cmd_dup(CurrentToken);
            goto condition_done;
        }
    }
    FreeCommand(Cmd);
    ParseError();
    return ((void*)0);

condition_done:
    Cmd->Subcommands = ParseCommandOp(C_OP_LOWEST);
    if (Cmd->Subcommands == ((void*)0))
    {
        FreeCommand(Cmd);
        return ((void*)0);
    }
    if (_tcsicmp(CurrentToken, _T("else")) == 0)
    {
        Cmd->Subcommands->Next = ParseCommandOp(C_OP_LOWEST);
        if (Cmd->Subcommands->Next == ((void*)0))
        {
            FreeCommand(Cmd);
            return ((void*)0);
        }
    }

    return Cmd;
}
