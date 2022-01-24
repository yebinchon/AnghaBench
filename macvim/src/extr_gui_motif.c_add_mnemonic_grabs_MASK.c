#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * WidgetList ;
typedef  int /*<<< orphan*/  Widget ;
typedef  char KeySym ;
typedef  int Boolean ;

/* Variables and functions */
 int False ; 
 int /*<<< orphan*/  GrabModeAsync ; 
 int /*<<< orphan*/  Mod1Mask ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XmNchildren ; 
 int /*<<< orphan*/  XmNmnemonic ; 
 int /*<<< orphan*/  XmNnumChildren ; 
 int /*<<< orphan*/  XmNrowColumnType ; 
 scalar_t__ XmWORK_AREA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ xmRowColumnWidgetClass ; 

__attribute__((used)) static void
FUNC7(Widget dialog, Widget w)
{
    char	    mneString[2];
    WidgetList	    children;
    int		    numChildren, i;
    Boolean	    isMenu;
    KeySym	    mnemonic = '\0';
    unsigned char   rowColType;

    if (FUNC5(w))
    {
	if (FUNC2(w) == xmRowColumnWidgetClass)
	{
	    FUNC6(w, XmNrowColumnType, &rowColType, NULL);
	    isMenu = (rowColType != (unsigned char)XmWORK_AREA);
	}
	else
	    isMenu = False;
	if (!isMenu)
	{
	    FUNC6(w, XmNchildren, &children, XmNnumChildren,
							  &numChildren, NULL);
	    for (i = 0; i < numChildren; i++)
		FUNC7(dialog, children[i]);
	}
    }
    else
    {
	FUNC6(w, XmNmnemonic, &mnemonic, NULL);
	if (mnemonic != '\0')
	{
	    mneString[0] = mnemonic;
	    mneString[1] = '\0';
	    FUNC4(dialog, FUNC0(FUNC3(dialog),
						  FUNC1(mneString)),
		    Mod1Mask, True, GrabModeAsync, GrabModeAsync);
	}
    }
}