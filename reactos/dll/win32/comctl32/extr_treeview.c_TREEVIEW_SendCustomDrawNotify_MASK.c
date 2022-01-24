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
struct TYPE_8__ {int /*<<< orphan*/  hdr; scalar_t__ lItemlParam; scalar_t__ uItemState; scalar_t__ dwItemSpec; int /*<<< orphan*/  rc; int /*<<< orphan*/  hdc; int /*<<< orphan*/  dwDrawStage; } ;
struct TYPE_7__ {TYPE_3__ nmcd; scalar_t__ iLevel; int /*<<< orphan*/  clrTextBk; int /*<<< orphan*/  clrText; } ;
struct TYPE_6__ {int /*<<< orphan*/  clrBk; int /*<<< orphan*/  clrText; } ;
typedef  TYPE_1__ TREEVIEW_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ NMTVCUSTOMDRAW ;
typedef  TYPE_3__ NMCUSTOMDRAW ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  NM_CUSTOMDRAW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC2(const TREEVIEW_INFO *infoPtr, DWORD dwDrawStage,
			      HDC hdc, RECT rc)
{
    NMTVCUSTOMDRAW nmcdhdr;
    NMCUSTOMDRAW *nmcd;

    FUNC0("drawstage:0x%x hdc:%p\n", dwDrawStage, hdc);

    nmcd = &nmcdhdr.nmcd;
    nmcd->dwDrawStage = dwDrawStage;
    nmcd->hdc = hdc;
    nmcd->rc = rc;
    nmcd->dwItemSpec = 0;
    nmcd->uItemState = 0;
    nmcd->lItemlParam = 0;
    nmcdhdr.clrText = infoPtr->clrText;
    nmcdhdr.clrTextBk = infoPtr->clrBk;
    nmcdhdr.iLevel = 0;

    return FUNC1(infoPtr, NM_CUSTOMDRAW, &nmcdhdr.nmcd.hdr);
}