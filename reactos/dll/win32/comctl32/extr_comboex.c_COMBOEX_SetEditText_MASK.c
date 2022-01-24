#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int mask; } ;
struct TYPE_7__ {int /*<<< orphan*/  hwndEdit; } ;
typedef  int LPARAM ;
typedef  TYPE_1__ COMBOEX_INFO ;
typedef  TYPE_2__ CBE_ITEMDATA ;

/* Variables and functions */
 int CBEIF_TEXT ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 

__attribute__((used)) static void FUNC2 (const COMBOEX_INFO *infoPtr, CBE_ITEMDATA *item)
{
    if (!infoPtr->hwndEdit) return;

    if (item->mask & CBEIF_TEXT) {
	FUNC1 (infoPtr->hwndEdit, WM_SETTEXT, 0, (LPARAM)FUNC0(infoPtr, item));
	FUNC1 (infoPtr->hwndEdit, EM_SETSEL, 0, 0);
	FUNC1 (infoPtr->hwndEdit, EM_SETSEL, 0, -1);
    }
}