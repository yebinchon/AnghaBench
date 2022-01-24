#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_7__ {scalar_t__ hwndSelf; } ;
struct TYPE_6__ {void* y; void* x; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  void* INT ;
typedef  TYPE_2__ HEADER_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  NM_RCLICK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CONTEXTMENU ; 

__attribute__((used)) static LRESULT
FUNC4 (HEADER_INFO *infoPtr, INT x, INT y)
{
    BOOL bRet;
    POINT pt;

    pt.x = x;
    pt.y = y;

    /* Send a Notify message */
    bRet = FUNC1 (infoPtr, NM_RCLICK);

    /* Change to screen coordinate for WM_CONTEXTMENU */
    FUNC0(infoPtr->hwndSelf, &pt);

    /* Send a WM_CONTEXTMENU message in response to the RBUTTONUP */
    FUNC3( infoPtr->hwndSelf, WM_CONTEXTMENU, (WPARAM) infoPtr->hwndSelf, FUNC2(pt.x, pt.y));

    return bRet;
}