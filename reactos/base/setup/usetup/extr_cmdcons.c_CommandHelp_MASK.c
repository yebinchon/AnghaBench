#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* help ) () ;int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  PCONSOLE_STATE ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  TYPE_1__* LPCOMMAND ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* Commands ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static
INT
FUNC7(
    PCONSOLE_STATE State,
    LPSTR param)
{
    LPCOMMAND cmdptr;

    FUNC1("param: %p %u '%s'\n", param, FUNC5(param), param);

    if (!FUNC3(param, "/?"))
    {
        FUNC2();
        return 0;
    }

    if (param != NULL && FUNC5(param) > 0)
    {
        for (cmdptr = Commands; cmdptr->name != NULL; cmdptr++)
        {
            if (!FUNC4(param, cmdptr->name))
            {
                if (cmdptr->help != NULL)
                {
                    cmdptr->help();
                    return 0;
                }
            }
        }
    }

    FUNC0("CLS\n");
    FUNC0("DUMPSECTOR\n");
    FUNC0("EXIT\n");
    FUNC0("HELP\n");
    FUNC0("\n");

    return 0;
}