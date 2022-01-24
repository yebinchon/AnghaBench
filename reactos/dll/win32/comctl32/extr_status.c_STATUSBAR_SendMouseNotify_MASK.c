#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {short x; short y; } ;
struct TYPE_7__ {int /*<<< orphan*/  idFrom; int /*<<< orphan*/  code; int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_9__ {int dwHitInfo; TYPE_1__ hdr; scalar_t__ dwItemData; TYPE_6__ pt; int /*<<< orphan*/  dwItemSpec; } ;
struct TYPE_8__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  Notify; } ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  TYPE_3__ NMMOUSE ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 

__attribute__((used)) static LRESULT
FUNC7(const STATUS_INFO *infoPtr, UINT code, UINT msg, WPARAM wParam, LPARAM lParam)
{
    NMMOUSE  nm;

    FUNC6("code %04x, lParam=%lx\n", code, lParam);
    nm.hdr.hwndFrom = infoPtr->Self;
    nm.hdr.idFrom = FUNC1(infoPtr->Self, GWLP_ID);
    nm.hdr.code = code;
    nm.pt.x = (short)FUNC3(lParam);
    nm.pt.y = (short)FUNC2(lParam);
    nm.dwItemSpec = FUNC4(infoPtr, &nm.pt);
    nm.dwItemData = 0;
    nm.dwHitInfo = 0x30000;     /* seems constant */

    /* Do default processing if WM_NOTIFY returns zero */
    if(!FUNC5(infoPtr->Notify, WM_NOTIFY, nm.hdr.idFrom, (LPARAM)&nm))
    {
      return FUNC0(infoPtr->Self, msg, wParam, lParam);
    }
    return 0;
}