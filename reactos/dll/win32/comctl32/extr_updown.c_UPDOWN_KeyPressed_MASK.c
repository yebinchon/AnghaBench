#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int Flags; TYPE_1__* AccelVect; scalar_t__ AccelCount; int /*<<< orphan*/  Self; } ;
typedef  TYPE_2__ UPDOWN_INFO ;
struct TYPE_6__ {int nInc; } ;
typedef  int LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOPRESS_DELAY ; 
 int /*<<< orphan*/  FALSE ; 
 int FLAG_ARROW ; 
 int FLAG_DECR ; 
 int FLAG_INCR ; 
 int FLAG_PRESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_AUTOPRESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int VK_DOWN ; 
 int VK_UP ; 

__attribute__((used)) static LRESULT FUNC4(UPDOWN_INFO *infoPtr, int key)
{
    int arrow, accel;

    if (key == VK_UP) arrow = FLAG_INCR;
    else if (key == VK_DOWN) arrow = FLAG_DECR;
    else return 1;

    FUNC3 (infoPtr);
    infoPtr->Flags &= ~FLAG_ARROW;
    infoPtr->Flags |= FLAG_PRESSED | arrow;
    FUNC0 (infoPtr->Self, NULL, FALSE);
    FUNC1(infoPtr->Self, TIMER_AUTOPRESS, AUTOPRESS_DELAY, 0);
    accel = (infoPtr->AccelCount && infoPtr->AccelVect) ? infoPtr->AccelVect[0].nInc : 1;
    FUNC2 (infoPtr, accel, arrow);
    return 0;
}