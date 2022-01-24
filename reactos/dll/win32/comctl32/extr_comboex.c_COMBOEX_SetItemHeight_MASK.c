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
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ hwndSelf; scalar_t__ hwndCombo; } ;
struct TYPE_7__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ INT ;
typedef  TYPE_2__ COMBOEX_INFO ;

/* Variables and functions */
 scalar_t__ CB_ERR ; 
 int /*<<< orphan*/  CB_SETITEMHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static INT FUNC6 (COMBOEX_INFO const *infoPtr, INT index, UINT height)
{
    RECT cb_wrect, cbx_wrect, cbx_crect;

    /* First, lets forward the message to the normal combo control
       just like Windows.     */
    if (infoPtr->hwndCombo)
       if (FUNC2 (infoPtr->hwndCombo, CB_SETITEMHEIGHT,
			 index, height) == CB_ERR) return CB_ERR;

    FUNC1 (infoPtr->hwndCombo, &cb_wrect);
    FUNC1 (infoPtr->hwndSelf, &cbx_wrect);
    FUNC0 (infoPtr->hwndSelf, &cbx_crect);
    /* the height of comboex as height of the combo + comboex border */
    height = cb_wrect.bottom-cb_wrect.top
             + cbx_wrect.bottom-cbx_wrect.top
             - (cbx_crect.bottom-cbx_crect.top);
    FUNC4("EX window=(%s), client=(%s)\n",
          FUNC5(&cbx_wrect), FUNC5(&cbx_crect));
    FUNC4("CB window=(%s), EX setting=(0,0)-(%d,%d)\n",
          FUNC5(&cbx_wrect), cbx_wrect.right-cbx_wrect.left, height);
    FUNC3 (infoPtr->hwndSelf, HWND_TOP, 0, 0,
		  cbx_wrect.right-cbx_wrect.left, height,
		  SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOMOVE);

    return 0;
}