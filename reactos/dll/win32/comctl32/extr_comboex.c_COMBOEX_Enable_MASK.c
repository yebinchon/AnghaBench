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
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; scalar_t__ hwndCombo; scalar_t__ hwndEdit; } ;
typedef  int LRESULT ;
typedef  TYPE_1__ COMBOEX_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC3 (COMBOEX_INFO *infoPtr, BOOL enable)
{
    FUNC2("hwnd=%p, enable=%s\n", infoPtr->hwndSelf, enable ? "TRUE":"FALSE");

    if (infoPtr->hwndEdit)
       FUNC0(infoPtr->hwndEdit, enable);

    FUNC0(infoPtr->hwndCombo, enable);

    /* Force the control to repaint when the enabled state changes. */
    FUNC1(infoPtr->hwndSelf, NULL, TRUE);

    return 1;
}