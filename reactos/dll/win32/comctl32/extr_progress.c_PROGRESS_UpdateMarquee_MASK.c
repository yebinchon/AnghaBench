#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int MarqueePos; int /*<<< orphan*/  Self; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PROGRESS_INFO ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PBS_SMOOTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (PROGRESS_INFO *infoPtr)
{
    LONG style = FUNC0 (infoPtr->Self, GWL_STYLE);
    RECT rect;
    int ledWidth, leds;
    HTHEME theme = FUNC1 (infoPtr->Self);
    BOOL smooth = (style & PBS_SMOOTH) && !theme;

    FUNC5 (infoPtr->Self, &rect);

    if (smooth)
        ledWidth = 1;
    else
        ledWidth = FUNC7( infoPtr, style, &rect ) + FUNC6( infoPtr );

    leds = (FUNC4( style, &rect ) + ledWidth - 1) /
        ledWidth;

    /* increment the marquee progress */
    if (++infoPtr->MarqueePos >= leds)
        infoPtr->MarqueePos = 0;

    FUNC2(infoPtr->Self, &rect, TRUE);
    FUNC3(infoPtr->Self);
}