#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* szFileTitle; int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hEdit; int /*<<< orphan*/  hInstance; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EM_GETMODIFY ; 
 scalar_t__ FALSE ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int /*<<< orphan*/  STRING_NOTEPAD ; 
 int /*<<< orphan*/  STRING_UNTITLED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(BOOL clearModifyAlert)
{
    TCHAR szCaption[MAX_STRING_LEN];
    TCHAR szNotepad[MAX_STRING_LEN];
    TCHAR szFilename[MAX_STRING_LEN];

    /* Load the name of the application */
    FUNC1(Globals.hInstance, STRING_NOTEPAD, szNotepad, FUNC0(szNotepad));

    /* Determine if the file has been saved or if this is a new file */
    if (Globals.szFileTitle[0] != 0)
        FUNC5(szFilename, FUNC0(szFilename), Globals.szFileTitle);
    else
        FUNC1(Globals.hInstance, STRING_UNTITLED, szFilename, FUNC0(szFilename));

    /* When a file is being opened or created, there is no need to have the edited flag shown
       when the new or opened file has not been edited yet */
    if (clearModifyAlert)
        FUNC4(szCaption, FUNC0(szCaption), FUNC6("%s - %s"), szFilename, szNotepad);
    else
    {
        BOOL isModified = (FUNC2(Globals.hEdit, EM_GETMODIFY, 0, 0) ? TRUE : FALSE);

        /* Update the caption based upon if the user has modified the contents of the file or not */
        FUNC4(szCaption, FUNC0(szCaption), FUNC6("%s%s - %s"),
            (isModified ? FUNC6("*") : FUNC6("")), szFilename, szNotepad);
    }

    /* Update the window caption */
    FUNC3(Globals.hMainWnd, szCaption);
}