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
struct TYPE_4__ {scalar_t__ uNumTics; int /*<<< orphan*/ * tics; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT
FUNC2 (TRACKBAR_INFO *infoPtr, BOOL fRedraw)
{
    if (infoPtr->tics) {
        FUNC0 (infoPtr->tics);
        infoPtr->tics = NULL;
        infoPtr->uNumTics = 0;
    }

    if (fRedraw) FUNC1(infoPtr);

    return 0;
}