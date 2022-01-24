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
struct TYPE_5__ {int focus_item; int /*<<< orphan*/  self; int /*<<< orphan*/  horz_pos; scalar_t__ font; int /*<<< orphan*/  in_focus; int /*<<< orphan*/  caret_on; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ LB_DESCR ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_GRAYTEXT ; 
 int /*<<< orphan*/  DCX_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ODA_FOCUS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10( LB_DESCR *descr, BOOL on )
{
    HDC hdc;
    RECT rect;
    HFONT oldFont = 0;

    /* Do not repaint the item if the item is not visible */
    if (!FUNC3(descr->self)) return;

    if (descr->focus_item == -1) return;
    if (!descr->caret_on || !descr->in_focus) return;

    if (FUNC4( descr, descr->focus_item, &rect ) != 1) return;
    if (!(hdc = FUNC0( descr->self, 0, DCX_CACHE ))) return;
    if (descr->font) oldFont = FUNC7( hdc, descr->font );
    if (!FUNC2(descr->self))
        FUNC8( hdc, FUNC1( COLOR_GRAYTEXT ) );
    FUNC9( hdc, descr->horz_pos, 0, NULL );
    FUNC5( descr, hdc, &rect, descr->focus_item, ODA_FOCUS, !on );
    if (oldFont) FUNC7( hdc, oldFont );
    FUNC6( descr->self, hdc );
}