#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hwndSelf; scalar_t__ defaultFont; int /*<<< orphan*/  edit; scalar_t__ hwndEdit; scalar_t__ hwndCombo; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  COMBOEX_ComboWndProc ; 
 int /*<<< orphan*/  COMBOEX_EditWndProc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  COMBO_SUBCLASSID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  EDIT_SUBCLASSID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC6 (COMBOEX_INFO *infoPtr)
{
    if (infoPtr->hwndCombo)
        FUNC5(infoPtr->hwndCombo, COMBOEX_ComboWndProc, COMBO_SUBCLASSID, 0);

    if (infoPtr->hwndEdit)
        FUNC5(infoPtr->hwndEdit, COMBOEX_EditWndProc, EDIT_SUBCLASSID, 0);

    FUNC0 (&infoPtr->edit);
    FUNC1 (infoPtr);

    if (infoPtr->defaultFont)
	FUNC2 (infoPtr->defaultFont);

    FUNC4 (infoPtr->hwndSelf, 0, 0);

    /* free comboex info data */
    FUNC3 (infoPtr);

    return 0;
}