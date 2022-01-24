#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Rest; int /*<<< orphan*/  First; } ;
struct TYPE_9__ {int Type; int /*<<< orphan*/  Redirections; struct TYPE_9__* Next; struct TYPE_9__* Subcommands; TYPE_1__ Command; } ;
typedef  TYPE_2__ PARSED_COMMAND ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int INT ;

/* Variables and functions */
#define  C_BLOCK 136 
#define  C_COMMAND 135 
#define  C_FOR 134 
#define  C_IF 133 
#define  C_IFFAILURE 132 
#define  C_IFSUCCESS 131 
#define  C_MULTI 130 
#define  C_PIPE 129 
#define  C_QUIET 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int nErrorLevel ; 

INT
FUNC8(PARSED_COMMAND *Cmd)
{
    PARSED_COMMAND *Sub;
    LPTSTR First, Rest;
    INT Ret = 0;

    if (!FUNC5(Cmd->Redirections))
        return 1;

    switch (Cmd->Type)
    {
    case C_COMMAND:
        Ret = 1;
        First = FUNC1(Cmd->Command.First);
        if (First)
        {
            Rest = FUNC1(Cmd->Command.Rest);
            if (Rest)
            {
                Ret = FUNC0(First, Rest, Cmd);
                FUNC7(Rest);
            }
            FUNC7(First);
        }
        break;
    case C_QUIET:
    case C_BLOCK:
    case C_MULTI:
        for (Sub = Cmd->Subcommands; Sub; Sub = Sub->Next)
            Ret = FUNC8(Sub);
        break;
    case C_IFFAILURE:
        Sub = Cmd->Subcommands;
        Ret = FUNC8(Sub);
        if (Ret != 0)
        {
            nErrorLevel = Ret;
            Ret = FUNC8(Sub->Next);
        }
        break;
    case C_IFSUCCESS:
        Sub = Cmd->Subcommands;
        Ret = FUNC8(Sub);
        if (Ret == 0)
            Ret = FUNC8(Sub->Next);
        break;
    case C_PIPE:
        Ret = FUNC4(Cmd);
        break;
    case C_IF:
        Ret = FUNC3(Cmd);
        break;
    case C_FOR:
        Ret = FUNC2(Cmd);
        break;
    }

    FUNC6(Cmd->Redirections, NULL);
    return Ret;
}