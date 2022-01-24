#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_5__ {TYPE_1__ rect; int /*<<< orphan*/  iImage; int /*<<< orphan*/  pszText; int /*<<< orphan*/  dwState; } ;
typedef  TYPE_2__ TAB_ITEM ;
typedef  int /*<<< orphan*/  TAB_INFO ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tab ; 

__attribute__((used)) static void
FUNC4(const TAB_INFO *infoPtr, UINT iItem)
{
    if (FUNC2(tab)) {
	TAB_ITEM *ti = FUNC0(infoPtr, iItem);

	FUNC1("tab %d, dwState=0x%08x, pszText=%s, iImage=%d\n",
	      iItem, ti->dwState, FUNC3(ti->pszText), ti->iImage);
	FUNC1("tab %d, rect.left=%d, rect.top(row)=%d\n",
	      iItem, ti->rect.left, ti->rect.top);
    }
}