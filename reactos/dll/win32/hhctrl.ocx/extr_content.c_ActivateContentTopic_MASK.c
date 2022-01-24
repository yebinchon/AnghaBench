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
struct TYPE_3__ {struct TYPE_3__* child; struct TYPE_3__* next; scalar_t__ id; int /*<<< orphan*/  local; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TVGN_CARET ; 
 int /*<<< orphan*/  TVM_SELECTITEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(HWND hWnd, LPCWSTR filename, ContentItem *item)
{
    if (FUNC1(item->local, filename) == 0)
    {
        FUNC0(hWnd, TVM_SELECTITEM, TVGN_CARET, (LPARAM) item->id);
        return;
    }

    if (item->next)
        FUNC2(hWnd, filename, item->next);

    if (item->child)
        FUNC2(hWnd, filename, item->child);
}