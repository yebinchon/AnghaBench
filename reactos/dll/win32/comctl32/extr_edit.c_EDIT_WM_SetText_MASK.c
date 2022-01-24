#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int flags; int style; scalar_t__ hwndListBox; scalar_t__ x_offset; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int EF_MODIFIED ; 
 int EF_UPDATE ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  EN_UPDATE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(EDITSTATE *es, LPCWSTR text)
{
    if (es->flags & EF_UPDATE)
        /* fixed this bug once; complain if we see it about to happen again. */
        FUNC6("SetSel may generate UPDATE message whose handler may reset "
            "selection.\n");

    FUNC2(es, 0, (UINT)-1, FALSE);
    if (text)
    {
	FUNC7("%s\n", FUNC8(text));
	FUNC0(es, FALSE, text, FUNC9(text), FALSE, FALSE);
    }
    else
    {
	FUNC7("<NULL>\n");
	FUNC0(es, FALSE, NULL, 0, FALSE, FALSE);
    }
    es->x_offset = 0;
    es->flags &= ~EF_MODIFIED;
    FUNC2(es, 0, 0, FALSE);

    /* Send the notification after the selection start and end have been set
     * edit control doesn't send notification on WM_SETTEXT
     * if it is multiline, or it is part of combobox
     */
    if( !((es->style & ES_MULTILINE) || es->hwndListBox))
    {
        FUNC4(es, EN_UPDATE);
        FUNC4(es, EN_CHANGE);
    }
    FUNC1(es);
    FUNC5(es);
    FUNC3(es);
}