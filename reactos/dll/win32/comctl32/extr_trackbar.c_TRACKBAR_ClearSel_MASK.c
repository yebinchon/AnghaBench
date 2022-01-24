#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; scalar_t__ lSelMax; scalar_t__ lSelMin; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TB_SELECTIONCHANGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT
FUNC1 (TRACKBAR_INFO *infoPtr, BOOL fRedraw)
{
    infoPtr->lSelMin = 0;
    infoPtr->lSelMax = 0;
    infoPtr->flags |= TB_SELECTIONCHANGED;

    if (fRedraw) FUNC0(infoPtr);

    return 0;
}