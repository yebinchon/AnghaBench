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
struct TYPE_4__ {void* yTrackPos; void* xTrackPos; scalar_t__ bTrackActive; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  void* INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*) ; 

__attribute__((used)) static LRESULT
FUNC4 (TOOLTIPS_INFO *infoPtr, LPARAM coord)
{
    infoPtr->xTrackPos = (INT)FUNC1(coord);
    infoPtr->yTrackPos = (INT)FUNC0(coord);

    if (infoPtr->bTrackActive) {
	FUNC3("[%d %d]\n",
	       infoPtr->xTrackPos, infoPtr->yTrackPos);

	FUNC2 (infoPtr);
    }

    return 0;
}