#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ofsFilename; int command; int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ WINHELP ;
struct TYPE_4__ {int dwData; TYPE_1__* lpData; } ;
typedef  int LRESULT ;
typedef  int LPSTR ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ COPYDATASTRUCT ;

/* Variables and functions */
#define  HELP_CONTENTS 134 
#define  HELP_CONTEXT 133 
#define  HELP_CONTEXTPOPUP 132 
#define  HELP_FINDER 131 
#define  HELP_HELPONHELP 130 
#define  HELP_QUIT 129 
#define  HELP_SETCONTENTS 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static LRESULT  FUNC11(HWND hSrcWnd, LPARAM lParam)
{
    COPYDATASTRUCT*     cds = (COPYDATASTRUCT*)lParam;
    WINHELP*            wh;

    if (cds->dwData != 0xA1DE505)
    {
        FUNC7("Wrong magic number (%08lx)\n", cds->dwData);
        return 0;
    }

    wh = cds->lpData;

    if (wh)
    {
        char*   ptr = (wh->ofsFilename) ? (LPSTR)wh + wh->ofsFilename : NULL;

        FUNC8("Got[%u]: cmd=%u data=%08x fn=%s\n",
                   wh->size, wh->command, wh->data, FUNC10(ptr));
        switch (wh->command)
        {
        case HELP_CONTEXT:
            if (ptr)
            {
                FUNC3(ptr, "main", wh->data);
            }
            if (!FUNC9()) FUNC0();
            break;
        case HELP_QUIT:
            FUNC0();
            break;
        case HELP_CONTENTS:
            if (ptr)
            {
                FUNC2(ptr, "main");
            }
            if (!FUNC9()) FUNC0();
            break;
        case HELP_HELPONHELP:
            FUNC1();
            if (!FUNC9()) FUNC0();
            break;
        /* case HELP_SETINDEX: */
        case HELP_SETCONTENTS:
            if (ptr)
            {
                FUNC6(ptr, wh->data);
            }
            break;
        case HELP_CONTEXTPOPUP:
            if (ptr)
            {
                FUNC5(ptr, wh->data);
            }
            break;
        /* case HELP_FORCEFILE:*/
        /* case HELP_CONTEXTMENU: */
        case HELP_FINDER:
            /* in fact, should be the topic dialog box */
            FUNC7("HELP_FINDER: stub\n");
            if (ptr)
            {
                FUNC4(ptr, "main", 0);
            }
            break;
        /* case HELP_WM_HELP: */
        /* case HELP_SETPOPUP_POS: */
        /* case HELP_KEY: */
        /* case HELP_COMMAND: */
        /* case HELP_PARTIALKEY: */
        /* case HELP_MULTIKEY: */
        /* case HELP_SETWINPOS: */
        default:
            FUNC7("Unhandled command (%x) for remote winhelp control\n", wh->command);
            break;
        }
    }
    /* Always return success for now */
    return 1;
}