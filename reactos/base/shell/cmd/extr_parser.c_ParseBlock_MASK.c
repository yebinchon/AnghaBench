#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * Redirections; struct TYPE_6__* Next; struct TYPE_6__* Subcommands; int /*<<< orphan*/  Type; } ;
typedef  int /*<<< orphan*/  REDIRECTION ;
typedef  TYPE_1__ PARSED_COMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  C_BLOCK ; 
 int /*<<< orphan*/  C_OP_LOWEST ; 
 scalar_t__ CurrentTokenType ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InsideBlock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDARD_SEPS ; 
 scalar_t__ TOK_END_BLOCK ; 
 scalar_t__ TOK_REDIRECTION ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ bParseError ; 
 TYPE_1__* FUNC8 (int) ; 

__attribute__((used)) static PARSED_COMMAND *FUNC9(REDIRECTION *RedirList)
{
    PARSED_COMMAND *Cmd, *Sub, **NextPtr;

    Cmd = FUNC8(sizeof(PARSED_COMMAND));
    if (!Cmd)
    {
        FUNC7("Cannot allocate memory for Cmd!\n");
        FUNC4();
        FUNC1(RedirList);
        return NULL;
    }
    Cmd->Type = C_BLOCK;
    Cmd->Next = NULL;
    Cmd->Subcommands = NULL;
    Cmd->Redirections = RedirList;

    /* Read the block contents */
    NextPtr = &Cmd->Subcommands;
    InsideBlock++;
    while (1)
    {
        Sub = FUNC3(C_OP_LOWEST);
        if (Sub)
        {
            *NextPtr = Sub;
            NextPtr = &Sub->Next;
        }
        else if (bParseError)
        {
            InsideBlock--;
            FUNC0(Cmd);
            return NULL;
        }

        if (CurrentTokenType == TOK_END_BLOCK)
            break;

        /* Skip past the \n */
        FUNC2();
    }
    InsideBlock--;

    /* Process any trailing redirections */
    while (FUNC6(0, STANDARD_SEPS) == TOK_REDIRECTION)
    {
        if (!FUNC5(&Cmd->Redirections))
        {
            FUNC0(Cmd);
            return NULL;
        }
    }
    return Cmd;
}