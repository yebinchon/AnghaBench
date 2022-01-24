#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hwnd; TYPE_1__* ofnA; TYPE_2__* ofnW; } ;
struct TYPE_7__ {scalar_t__ nFilterIndex; } ;
struct TYPE_6__ {scalar_t__ nFilterIndex; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LONG ;
typedef  TYPE_3__ FD31_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ LB_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  cmb1 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC4( const FD31_DATA *lfs )
{
    LONG lRet;
    LPWSTR pstr;

    lRet = FUNC1(lfs->hwnd, cmb1, CB_GETCURSEL, 0, 0);
    if (lRet == LB_ERR)
        return TRUE;
    lfs->ofnW->nFilterIndex = lRet + 1;
    if (lfs->ofnA)
        lfs->ofnA->nFilterIndex = lRet + 1;
    pstr = (LPWSTR)FUNC1(lfs->hwnd, cmb1, CB_GETITEMDATA, lRet, 0);
    FUNC2("Selected filter : %s\n", FUNC3(pstr));

    return FUNC0( lfs, pstr, cmb1, lRet, TRUE );
}