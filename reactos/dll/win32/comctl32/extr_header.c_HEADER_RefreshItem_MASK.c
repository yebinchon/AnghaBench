#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* items; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bRectsValid; } ;
struct TYPE_5__ {int /*<<< orphan*/  rect; } ;
typedef  size_t INT ;
typedef  TYPE_2__ HEADER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (HEADER_INFO *infoPtr, INT iItem)
{
    if (!infoPtr->bRectsValid)
        FUNC0(infoPtr);

    FUNC1(infoPtr->hwndSelf, &infoPtr->items[iItem].rect, FALSE);
}