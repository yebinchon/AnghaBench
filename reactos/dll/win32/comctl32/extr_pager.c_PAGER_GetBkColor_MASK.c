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
struct TYPE_3__ {int /*<<< orphan*/  clrBk; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ PAGER_INFO ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline COLORREF
FUNC1(const PAGER_INFO *infoPtr)
{
    FUNC0("[%p] returns %06x\n", infoPtr->hwndSelf, infoPtr->clrBk);
    return infoPtr->clrBk;
}