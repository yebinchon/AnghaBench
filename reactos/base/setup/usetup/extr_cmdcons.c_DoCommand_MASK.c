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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  PCONSOLE_STATE ;
typedef  char* LPSTR ;
typedef  TYPE_1__* LPCOMMAND ;
typedef  char CHAR ;

/* Variables and functions */
 int CMD_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* Commands ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int MAX_PATH ; 
 int cl ; 
 char* cstart ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
VOID
FUNC11(
    PCONSOLE_STATE State,
    LPSTR line)
{
    CHAR com[MAX_PATH]; /* the first word in the command */
    LPSTR cp = com;
//    LPSTR cstart;
    LPSTR rest = line; /* pointer to the rest of the command line */
//    INT cl;
    LPCOMMAND cmdptr;

    FUNC1("DoCommand: (\'%s\')\n", line);

    /* Skip over initial white space */
    while (FUNC3(*rest))
        rest++;

//    cstart = rest;

    /* Anything to do ? */
    if (*rest)
    {
        /* Copy over 1st word as lower case */
        while (!FUNC2(*rest))
            *cp++ = FUNC10(*rest++);

        /* Terminate first word */
        *cp = '\0';

        /* Skip over whitespace to rest of line */
        while (FUNC3 (*rest))
            rest++;

        /* Scan internal command table */
        for (cmdptr = Commands; ; cmdptr++)
        {
            /* If end of table execute ext cmd */
            if (cmdptr->name == NULL)
            {
                FUNC0("Unknown command. Enter HELP to get a list of commands.");
                break;
            }

            if (FUNC5(com, cmdptr->name) == 0)
            {
                cmdptr->func(State, rest);
                break;
            }

#if 0
            /* The following code handles the case of commands like CD which
             * are recognised even when the command name and parameter are
             * not space separated.
             *
             * e.g dir..
             * cd\freda
             */

            /* Get length of command name */
            cl = strlen(cmdptr->name);

            if ((cmdptr->flags & CMD_SPECIAL) &&
                (!strncmp (cmdptr->name, com, cl)) &&
                (strchr("\\.-", *(com + cl))))
            {
                /* OK its one of the specials...*/

                /* Call with new rest */
                cmdptr->func(State, cstart + cl);
                break;
            }
#endif
        }
    }
}