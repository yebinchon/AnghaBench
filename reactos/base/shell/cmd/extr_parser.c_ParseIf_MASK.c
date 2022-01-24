#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t Operator; void* RightArg; void* LeftArg; int /*<<< orphan*/  Flags; } ;
struct TYPE_10__ {TYPE_2__* Subcommands; TYPE_1__ If; int /*<<< orphan*/  Type; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Next; } ;
typedef  TYPE_3__ PARSED_COMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  C_IF ; 
 int /*<<< orphan*/  C_OP_LOWEST ; 
 scalar_t__* CurrentToken ; 
 int CurrentTokenType ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IFFLAG_IGNORECASE ; 
 int /*<<< orphan*/  IFFLAG_NEGATE ; 
 size_t IF_MAX_COMPARISON ; 
 size_t IF_MAX_UNARY ; 
 int /*<<< orphan*/ * IfOperatorString ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDARD_SEPS ; 
 int TOK_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC8 (int) ; 
 void* FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PARSED_COMMAND *FUNC11(void)
{
    int Type;
    PARSED_COMMAND *Cmd;

    Cmd = FUNC8(sizeof(PARSED_COMMAND));
    if (!Cmd)
    {
        FUNC4("Cannot allocate memory for Cmd!\n");
        FUNC2();
        return NULL;
    }
    FUNC10(Cmd, 0, sizeof(PARSED_COMMAND));
    Cmd->Type = C_IF;

    Type = CurrentTokenType;
    if (FUNC6(CurrentToken, FUNC5("/I")) == 0)
    {
        Cmd->If.Flags |= IFFLAG_IGNORECASE;
        Type = FUNC3(0, STANDARD_SEPS);
    }
    if (FUNC6(CurrentToken, FUNC5("not")) == 0)
    {
        Cmd->If.Flags |= IFFLAG_NEGATE;
        Type = FUNC3(0, STANDARD_SEPS);
    }

    if (Type != TOK_NORMAL)
    {
        FUNC0(Cmd);
        FUNC2();
        return NULL;
    }

    /* Check for unary operators */
    for (; Cmd->If.Operator <= IF_MAX_UNARY; Cmd->If.Operator++)
    {
        if (FUNC6(CurrentToken, IfOperatorString[Cmd->If.Operator]) == 0)
        {
            if (FUNC3(0, STANDARD_SEPS) != TOK_NORMAL)
            {
                FUNC0(Cmd);
                FUNC2();
                return NULL;
            }
            Cmd->If.RightArg = FUNC9(CurrentToken);
            goto condition_done;
        }
    }

    /* It must be a two-argument (comparison) operator. It could be ==, so
     * the equals sign can't be treated as whitespace here. */
    Cmd->If.LeftArg = FUNC9(CurrentToken);
    FUNC3(0, FUNC5(",;"));

    /* The right argument can come immediately after == */
    if (FUNC7(CurrentToken, FUNC5("=="), 2) == 0 && CurrentToken[2])
    {
        Cmd->If.RightArg = FUNC9(&CurrentToken[2]);
        goto condition_done;
    }

    for (; Cmd->If.Operator <= IF_MAX_COMPARISON; Cmd->If.Operator++)
    {
        if (FUNC6(CurrentToken, IfOperatorString[Cmd->If.Operator]) == 0)
        {
            if (FUNC3(0, STANDARD_SEPS) != TOK_NORMAL)
                break;
            Cmd->If.RightArg = FUNC9(CurrentToken);
            goto condition_done;
        }
    }
    FUNC0(Cmd);
    FUNC2();
    return NULL;

condition_done:
    Cmd->Subcommands = FUNC1(C_OP_LOWEST);
    if (Cmd->Subcommands == NULL)
    {
        FUNC0(Cmd);
        return NULL;
    }
    if (FUNC6(CurrentToken, FUNC5("else")) == 0)
    {
        Cmd->Subcommands->Next = FUNC1(C_OP_LOWEST);
        if (Cmd->Subcommands->Next == NULL)
        {
            FUNC0(Cmd);
            return NULL;
        }
    }

    return Cmd;
}