#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  wDayOfWeek; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
struct TYPE_12__ {scalar_t__ hUpdown; int /*<<< orphan*/  pendingUpdown; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  hwndCheckbut; TYPE_1__ date; int /*<<< orphan*/  hMonthCal; int /*<<< orphan*/  dateValid; } ;
struct TYPE_11__ {scalar_t__ code; scalar_t__ hwndFrom; } ;
struct TYPE_10__ {int /*<<< orphan*/  iDelta; } ;
typedef  TYPE_2__ NM_UPDOWN ;
typedef  TYPE_3__ NMHDR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_4__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTN_CLOSEUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCM_GETCURSEL ; 
 scalar_t__ MCN_SELECT ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UDN_DELTAPOS ; 

__attribute__((used)) static LRESULT
FUNC6 (DATETIME_INFO *infoPtr, const NMHDR *lpnmh)
{
    FUNC5 ("Got notification %x from %p\n", lpnmh->code, lpnmh->hwndFrom);
    FUNC5 ("info: %p %p %p\n", infoPtr->hwndSelf, infoPtr->hMonthCal, infoPtr->hUpdown);

    if (lpnmh->code == MCN_SELECT) {
        FUNC4(infoPtr->hMonthCal, SW_HIDE);
        infoPtr->dateValid = TRUE;
        FUNC3 (infoPtr->hMonthCal, MCM_GETCURSEL, 0, (LPARAM)&infoPtr->date);
        FUNC5("got from calendar %04d/%02d/%02d day of week %d\n", 
        infoPtr->date.wYear, infoPtr->date.wMonth, infoPtr->date.wDay, infoPtr->date.wDayOfWeek);
        FUNC3 (infoPtr->hwndCheckbut, BM_SETCHECK, BST_CHECKED, 0);
        FUNC2(infoPtr->hwndSelf, NULL, TRUE);
        FUNC0 (infoPtr);
        FUNC1(infoPtr, DTN_CLOSEUP);
    }
    if ((lpnmh->hwndFrom == infoPtr->hUpdown) && (lpnmh->code == UDN_DELTAPOS)) {
        const NM_UPDOWN *lpnmud = (const NM_UPDOWN*)lpnmh;
        FUNC5("Delta pos %d\n", lpnmud->iDelta);
        infoPtr->pendingUpdown = lpnmud->iDelta;
    }
    return 0;
}