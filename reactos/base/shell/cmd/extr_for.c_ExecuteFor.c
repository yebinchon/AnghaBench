
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int Switches; scalar_t__ Params; TYPE_2__* Context; int Variable; int List; } ;
struct TYPE_28__ {TYPE_1__ For; } ;
struct TYPE_27__ {int varcount; struct TYPE_27__* prev; struct TYPE_27__** values; int firstvar; } ;
typedef TYPE_2__ TCHAR ;
typedef TYPE_3__ PARSED_COMMAND ;
typedef TYPE_2__* LPTSTR ;
typedef TYPE_2__* LPFOR_CONTEXT ;
typedef int INT ;
typedef int FOR_CONTEXT ;
typedef size_t DWORD ;


 int CMDLINE_LENGTH ;
 TYPE_2__* DoDelayedExpansion (int ) ;
 int FOR_F ;
 int FOR_LOOP ;
 int FOR_RECURSIVE ;
 int ForDir (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int ForF (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int ForLoop (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int ForRecursive (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 size_t GetFullPathName (scalar_t__,int ,TYPE_2__*,int *) ;
 int MAX_PATH ;
 int WARN (char*) ;
 scalar_t__ _T (char*) ;
 TYPE_2__* cmd_alloc (int) ;
 int cmd_free (TYPE_2__*) ;
 TYPE_2__* fc ;

INT
ExecuteFor(PARSED_COMMAND *Cmd)
{
    TCHAR Buffer[CMDLINE_LENGTH];
    LPTSTR BufferPtr = Buffer;
    LPFOR_CONTEXT lpNew;
    INT Ret;
    LPTSTR List = DoDelayedExpansion(Cmd->For.List);

    if (!List)
        return 1;


    lpNew = cmd_alloc(sizeof(FOR_CONTEXT));
    if (!lpNew)
    {
        WARN("Cannot allocate memory for lpNew!\n");
        cmd_free(List);
        return 1;
    }
    lpNew->prev = fc;
    lpNew->firstvar = Cmd->For.Variable;
    lpNew->varcount = 1;
    lpNew->values = &BufferPtr;

    Cmd->For.Context = lpNew;
    fc = lpNew;

    if (Cmd->For.Switches & FOR_F)
    {
        Ret = ForF(Cmd, List, Buffer);
    }
    else if (Cmd->For.Switches & FOR_LOOP)
    {
        Ret = ForLoop(Cmd, List, Buffer);
    }
    else if (Cmd->For.Switches & FOR_RECURSIVE)
    {
        DWORD Len = GetFullPathName(Cmd->For.Params ? Cmd->For.Params : _T("."),
                                    MAX_PATH, Buffer, ((void*)0));
        Ret = ForRecursive(Cmd, List, Buffer, &Buffer[Len]);
    }
    else
    {
        Ret = ForDir(Cmd, List, Buffer, Buffer);
    }


    if (fc == lpNew)
        fc = lpNew->prev;

    cmd_free(lpNew);
    cmd_free(List);
    return Ret;
}
