#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int x; int y; int v; int h; } ;

/* Variables and functions */
 scalar_t__ UINT8_MAX ; 
 int /*<<< orphan*/  last_timer ; 
 int mk_delay ; 
 int mk_interval ; 
 TYPE_1__ mouse_report ; 
 scalar_t__ mousekey_repeat ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 () ; 

void FUNC5(void) {
    if (FUNC2(last_timer) < (mousekey_repeat ? mk_interval : mk_delay * 10)) {
        return;
    }
    if (mouse_report.x == 0 && mouse_report.y == 0 && mouse_report.v == 0 && mouse_report.h == 0) {
        return;
    }
    if (mousekey_repeat != UINT8_MAX) mousekey_repeat++;
    if (mouse_report.x > 0) mouse_report.x = FUNC1();
    if (mouse_report.x < 0) mouse_report.x = FUNC1() * -1;
    if (mouse_report.y > 0) mouse_report.y = FUNC1();
    if (mouse_report.y < 0) mouse_report.y = FUNC1() * -1;
    /* diagonal move [1/sqrt(2)] */
    if (mouse_report.x && mouse_report.y) {
        mouse_report.x = FUNC3(mouse_report.x);
        if (mouse_report.x == 0) {
            mouse_report.x = 1;
        }
        mouse_report.y = FUNC3(mouse_report.y);
        if (mouse_report.y == 0) {
            mouse_report.y = 1;
        }
    }
    if (mouse_report.v > 0) mouse_report.v = FUNC4();
    if (mouse_report.v < 0) mouse_report.v = FUNC4() * -1;
    if (mouse_report.h > 0) mouse_report.h = FUNC4();
    if (mouse_report.h < 0) mouse_report.h = FUNC4() * -1;
    FUNC0();
}