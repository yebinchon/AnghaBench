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
struct TYPE_4__ {int /*<<< orphan*/  buttons; void* y; void* x; } ;
typedef  TYPE_1__ report_mouse_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOUSE_BTN1 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cursorTimeout ; 
 int /*<<< orphan*/  lastCursor ; 
 int /*<<< orphan*/  maxCursorSpeed ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swPin ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xOrigin ; 
 int /*<<< orphan*/  xPin ; 
 int /*<<< orphan*/  xPolarity ; 
 int /*<<< orphan*/  yOrigin ; 
 int /*<<< orphan*/  yPin ; 
 int /*<<< orphan*/  yPolarity ; 

void FUNC7(void) {
    report_mouse_t report = FUNC1();

    // todo read as one vector
    if (FUNC5(lastCursor) > cursorTimeout) {
        lastCursor = FUNC6();
        report.x   = FUNC0(xPin, xOrigin, maxCursorSpeed, xPolarity);
        report.y   = FUNC0(yPin, yOrigin, maxCursorSpeed, yPolarity);
    }
    //
    if (!FUNC4(swPin)) {
        report.buttons |= MOUSE_BTN1;
    } else {
        report.buttons &= ~MOUSE_BTN1;
    }

    FUNC3(report);
    FUNC2();
}