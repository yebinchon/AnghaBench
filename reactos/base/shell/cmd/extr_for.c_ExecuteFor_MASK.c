#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int Switches; scalar_t__ Params; TYPE_2__* Context; int /*<<< orphan*/  Variable; int /*<<< orphan*/  List; } ;
struct TYPE_28__ {TYPE_1__ For; } ;
struct TYPE_27__ {int varcount; struct TYPE_27__* prev; struct TYPE_27__** values; int /*<<< orphan*/  firstvar; } ;
typedef  TYPE_2__ TCHAR ;
typedef  TYPE_3__ PARSED_COMMAND ;
typedef  TYPE_2__* LPTSTR ;
typedef  TYPE_2__* LPFOR_CONTEXT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  FOR_CONTEXT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int CMDLINE_LENGTH ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FOR_F ; 
 int FOR_LOOP ; 
 int FOR_RECURSIVE ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 size_t FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* fc ; 

INT
FUNC10(PARSED_COMMAND *Cmd)
{
    TCHAR Buffer[CMDLINE_LENGTH]; /* Buffer to hold the variable value */
    LPTSTR BufferPtr = Buffer;
    LPFOR_CONTEXT lpNew;
    INT Ret;
    LPTSTR List = FUNC0(Cmd->For.List);

    if (!List)
        return 1;

    /* Create our FOR context */
    lpNew = FUNC8(sizeof(FOR_CONTEXT));
    if (!lpNew)
    {
        FUNC6("Cannot allocate memory for lpNew!\n");
        FUNC9(List);
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
        Ret = FUNC2(Cmd, List, Buffer);
    }
    else if (Cmd->For.Switches & FOR_LOOP)
    {
        Ret = FUNC3(Cmd, List, Buffer);
    }
    else if (Cmd->For.Switches & FOR_RECURSIVE)
    {
        DWORD Len = FUNC5(Cmd->For.Params ? Cmd->For.Params : FUNC7("."),
                                    MAX_PATH, Buffer, NULL);
        Ret = FUNC4(Cmd, List, Buffer, &Buffer[Len]);
    }
    else
    {
        Ret = FUNC1(Cmd, List, Buffer, Buffer);
    }

    /* Remove our context, unless someone already did that */
    if (fc == lpNew)
        fc = lpNew->prev;

    FUNC9(lpNew);
    FUNC9(List);
    return Ret;
}