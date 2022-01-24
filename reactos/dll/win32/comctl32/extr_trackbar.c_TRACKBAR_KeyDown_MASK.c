#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dwStyle; scalar_t__ lPos; scalar_t__ lRangeMin; scalar_t__ lRangeMax; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  scalar_t__ LONG ;
typedef  int INT ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TBS_DOWNISLEFT ; 
 int TBS_VERT ; 
 int /*<<< orphan*/  TB_BOTTOM ; 
 int /*<<< orphan*/  TB_TOP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int TRUE ; 
#define  VK_DOWN 135 
#define  VK_END 134 
#define  VK_HOME 133 
#define  VK_LEFT 132 
#define  VK_NEXT 131 
#define  VK_PRIOR 130 
#define  VK_RIGHT 129 
#define  VK_UP 128 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC8 (TRACKBAR_INFO *infoPtr, INT nVirtKey)
{
    BOOL downIsLeft = infoPtr->dwStyle & TBS_DOWNISLEFT;
    BOOL vert = infoPtr->dwStyle & TBS_VERT;
    LONG pos = infoPtr->lPos;

    FUNC0("%x\n", nVirtKey);

    switch (nVirtKey) {
    case VK_UP:
	if (!vert && downIsLeft) FUNC2(infoPtr);
        else FUNC3(infoPtr);
        break;
    case VK_LEFT:
        if (vert && downIsLeft) FUNC2(infoPtr);
        else FUNC3(infoPtr);
        break;
    case VK_DOWN:
	if (!vert && downIsLeft) FUNC3(infoPtr);
        else FUNC2(infoPtr);
        break;
    case VK_RIGHT:
	if (vert && downIsLeft) FUNC3(infoPtr);
        else FUNC2(infoPtr);
        break;
    case VK_NEXT:
	if (!vert && downIsLeft) FUNC5(infoPtr);
        else FUNC4(infoPtr);
        break;
    case VK_PRIOR:
	if (!vert && downIsLeft) FUNC4(infoPtr);
        else FUNC5(infoPtr);
        break;
    case VK_HOME:
        if (infoPtr->lPos == infoPtr->lRangeMin) return FALSE;
        infoPtr->lPos = infoPtr->lRangeMin;
        FUNC7 (infoPtr, TB_TOP);
        break;
    case VK_END:
        if (infoPtr->lPos == infoPtr->lRangeMax) return FALSE;
        infoPtr->lPos = infoPtr->lRangeMax;
        FUNC7 (infoPtr, TB_BOTTOM);
        break;
    }

    if (pos != infoPtr->lPos) {
	FUNC6 (infoPtr);
	FUNC1 (infoPtr, pos, infoPtr->lPos);
    }

    return TRUE;
}