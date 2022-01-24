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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int style; scalar_t__ self; int /*<<< orphan*/  horz_pos; int /*<<< orphan*/  owner; scalar_t__ font; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ LB_DESCR ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ HFONT ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_GRAYTEXT ; 
 int /*<<< orphan*/  DCX_CACHE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int LBS_DISPLAYCHANGED ; 
 int LBS_NOREDRAW ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_CTLCOLORLISTBOX ; 

__attribute__((used)) static void FUNC11( LB_DESCR *descr, INT index, UINT action )
{
    HDC hdc;
    RECT rect;
    HFONT oldFont = 0;
    HBRUSH hbrush, oldBrush = 0;

    /* Do not repaint the item if the item is not visible */
    if (!FUNC3(descr->self)) return;
    if (descr->style & LBS_NOREDRAW)
    {
        descr->style |= LBS_DISPLAYCHANGED;
        return;
    }
    if (FUNC4( descr, index, &rect ) != 1) return;
    if (!(hdc = FUNC0( descr->self, 0, DCX_CACHE ))) return;
    if (descr->font) oldFont = FUNC7( hdc, descr->font );
    hbrush = (HBRUSH)FUNC8( descr->owner, WM_CTLCOLORLISTBOX,
				   (WPARAM)hdc, (LPARAM)descr->self );
    if (hbrush) oldBrush = FUNC7( hdc, hbrush );
    if (!FUNC2(descr->self))
        FUNC9( hdc, FUNC1( COLOR_GRAYTEXT ) );
    FUNC10( hdc, descr->horz_pos, 0, NULL );
    FUNC5( descr, hdc, &rect, index, action, TRUE );
    if (oldFont) FUNC7( hdc, oldFont );
    if (oldBrush) FUNC7( hdc, oldBrush );
    FUNC6( descr->self, hdc );
}