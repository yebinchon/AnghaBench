#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ lPos; int flags; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  POINT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int TB_AUTO_PAGE_LEFT ; 
 int TB_AUTO_PAGE_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC7 (TRACKBAR_INFO *infoPtr, POINT clickPoint)
{
    LONG dir = FUNC1(infoPtr, clickPoint);
    LONG prevPos = infoPtr->lPos;

    FUNC0("clickPoint=%s, dir=%d\n", FUNC6(&clickPoint), dir);

    if (dir > 0 && (infoPtr->flags & TB_AUTO_PAGE_RIGHT))
	FUNC3(infoPtr);
    else if (dir < 0 && (infoPtr->flags & TB_AUTO_PAGE_LEFT))
	FUNC4(infoPtr);
    else return FALSE;

    FUNC5 (infoPtr);
    FUNC2 (infoPtr, prevPos, infoPtr->lPos);

    return TRUE;
}