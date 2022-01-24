#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t nNumButtons; char* dwStyle; size_t himlDef; int /*<<< orphan*/ * buttons; scalar_t__ bDoRedraw; int /*<<< orphan*/  himlDis; int /*<<< orphan*/  himlHot; int /*<<< orphan*/  himlInt; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  nNumStrings; int /*<<< orphan*/  nNumBitmaps; int /*<<< orphan*/  dwExStyle; } ;
typedef  TYPE_1__ TOOLBAR_INFO ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  toolbar ; 

__attribute__((used)) static void
FUNC3(const TOOLBAR_INFO *iP, INT line)
{
    if (FUNC2(toolbar)) {
	INT i;

	FUNC1("toolbar %p at line %d, exStyle=%08x, buttons=%d, bitmaps=%d, strings=%d, style=%08x\n",
	      iP->hwndSelf, line,
	      iP->dwExStyle, iP->nNumButtons, iP->nNumBitmaps,
	      iP->nNumStrings, iP->dwStyle);
	FUNC1("toolbar %p at line %d, himlInt=%p, himlDef=%p, himlHot=%p, himlDis=%p, redrawable=%s\n",
	      iP->hwndSelf, line,
	      iP->himlInt, iP->himlDef, iP->himlHot, iP->himlDis,
	      (iP->bDoRedraw) ? "TRUE" : "FALSE");
 	for(i=0; i<iP->nNumButtons; i++) {
            FUNC0(iP, &iP->buttons[i], i);
	}
    }
}