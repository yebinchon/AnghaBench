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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {scalar_t__ hwndCombo; scalar_t__ hwndEdit; scalar_t__ font; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HFONT ;
typedef  TYPE_1__ COMBOEX_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 

__attribute__((used)) static LRESULT FUNC3( COMBOEX_INFO *infoPtr, HFONT font, BOOL redraw )
{
    infoPtr->font = font;
    FUNC2( infoPtr->hwndCombo, WM_SETFONT, (WPARAM)font, 0 );
    if (infoPtr->hwndEdit) FUNC2( infoPtr->hwndEdit, WM_SETFONT, (WPARAM)font, 0 );
    FUNC0( infoPtr );
    if (redraw) FUNC1( infoPtr->hwndCombo, NULL, TRUE );
    return 0;
}