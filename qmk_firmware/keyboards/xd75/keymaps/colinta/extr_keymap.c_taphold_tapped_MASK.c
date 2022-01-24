#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_3__ {int is_pressed; int /*<<< orphan*/  kc_tap; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ tap_hold_t ;

/* Variables and functions */
 size_t TH_EVENTS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* th_events ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t index, bool pressed) {
    if (index >= TH_EVENTS_COUNT) { return; }

    tap_hold_t *th_event = &th_events[index];

    if (pressed) {
        th_event->timer = FUNC1();
        th_event->is_pressed = true;
    } else if (th_event->is_pressed) {
        FUNC0(th_event->kc_tap);
        FUNC2(th_event->kc_tap);
        th_event->is_pressed = false;
    }
}