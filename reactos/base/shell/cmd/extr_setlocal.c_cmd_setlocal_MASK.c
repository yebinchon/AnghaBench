#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* setlocal; } ;
struct TYPE_5__ {int /*<<< orphan*/  Environment; void* DelayedExpansion; void* EnableExtensions; struct TYPE_5__* Prev; } ;
typedef  TYPE_1__ SETLOCAL ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* bDelayedExpansion ; 
 void* bEnableExtensions ; 
 TYPE_4__* bc ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int nErrorLevel ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int*) ; 

INT FUNC10(LPTSTR param)
{
    SETLOCAL *Saved;
    LPTSTR *arg;
    INT argc, i;

    /* SETLOCAL only works inside a batch file */
    if (!bc)
        return 0;

    Saved = FUNC4(sizeof(SETLOCAL));
    if (!Saved)
    {
        FUNC1("Cannot allocate memory for Saved!\n");
        FUNC7();
        return 1;
    }
    Saved->Prev = bc->setlocal;
    Saved->EnableExtensions = bEnableExtensions;
    Saved->DelayedExpansion = bDelayedExpansion;
    Saved->Environment = FUNC0();
    if (!Saved->Environment)
    {
        FUNC7();
        FUNC5(Saved);
        return 1;
    }
    bc->setlocal = Saved;

    nErrorLevel = 0;

    arg = FUNC9(param, &argc);
    for (i = 0; i < argc; i++)
    {
        if (!FUNC3(arg[i], FUNC2("enableextensions")))
            /* FIXME: not implemented! */
            bEnableExtensions = TRUE;
        else if (!FUNC3(arg[i], FUNC2("disableextensions")))
            /* FIXME: not implemented! */
            bEnableExtensions = FALSE;
        else if (!FUNC3(arg[i], FUNC2("enabledelayedexpansion")))
            bDelayedExpansion = TRUE;
        else if (!FUNC3(arg[i], FUNC2("disabledelayedexpansion")))
            bDelayedExpansion = FALSE;
        else
        {
            FUNC6(arg[i]);
            break;
        }
    }
    FUNC8(arg);

    return nErrorLevel;
}