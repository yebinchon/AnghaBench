#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  self; } ;
struct TYPE_8__ {int left; int top; scalar_t__ bottom; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ LB_DESCR ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__,scalar_t__) ; 
 int DCX_INTERSECTRGN ; 
 int DCX_WINDOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int WS_EX_CLIENTEDGE ; 

__attribute__((used)) static void FUNC14( LB_DESCR *descr, HRGN region )
{
    DWORD exstyle = FUNC8( descr->self, GWL_EXSTYLE);
    HTHEME theme = FUNC10( descr->self );
    HRGN cliprgn = region;
    int cxEdge, cyEdge;
    HDC hdc;
    RECT r;

    if (!theme || !(exstyle & WS_EX_CLIENTEDGE))
        return;

    cxEdge = FUNC6(SM_CXEDGE),
    cyEdge = FUNC6(SM_CYEDGE);

    FUNC9(descr->self, &r);

    /* New clipping region passed to default proc to exclude border */
    cliprgn = FUNC1(r.left + cxEdge, r.top + cyEdge,
        r.right - cxEdge, r.bottom - cyEdge);
    if (region != (HRGN)1)
        FUNC0(cliprgn, cliprgn, region, RGN_AND);
    FUNC12(&r, -r.left, -r.top);

#ifdef __REACTOS__ /* r73789 */
    hdc = GetWindowDC(descr->self);
    /* Exclude client part */
    ExcludeClipRect(hdc,
                    r.left + cxEdge,
                    r.top + cyEdge,
                    r.right - cxEdge,
                    r.bottom -cyEdge);
#else
    hdc = FUNC5(descr->self, region, DCX_WINDOW|DCX_INTERSECTRGN);
    FUNC12(&r, -r.left, -r.top);
#endif

    if (FUNC11 (theme, 0, 0))
        FUNC3(descr->self, hdc, &r);
    FUNC2 (theme, hdc, 0, 0, &r, 0);
    FUNC13(descr->self, hdc);
}