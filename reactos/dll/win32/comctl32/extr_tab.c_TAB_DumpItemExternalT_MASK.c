#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {scalar_t__ pszText; int /*<<< orphan*/  lParam; int /*<<< orphan*/  iImage; int /*<<< orphan*/  cchTextMax; int /*<<< orphan*/  dwStateMask; int /*<<< orphan*/  dwState; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ TCITEMW ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  tab ; 

__attribute__((used)) static void
FUNC4(const TCITEMW *pti, UINT iItem, BOOL isW)
{
    if (FUNC1(tab)) {
	FUNC0("external tab %d, mask=0x%08x, dwState=0x%08x, dwStateMask=0x%08x, cchTextMax=0x%08x\n",
	      iItem, pti->mask, pti->dwState, pti->dwStateMask, pti->cchTextMax);
	FUNC0("external tab %d,   iImage=%d, lParam=0x%08lx, pszTextW=%s\n",
	      iItem, pti->iImage, pti->lParam, isW ? FUNC3(pti->pszText) : FUNC2((LPSTR)pti->pszText));
    }
}