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
struct TYPE_3__ {int is_pressed; int /*<<< orphan*/  kc_hold; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ tap_hold_t ;

/* Variables and functions */
 scalar_t__ LONGPRESS_DELAY ; 
 size_t TH_EVENTS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* th_events ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3() {
    for (uint8_t index = 0 ; index < TH_EVENTS_COUNT ; ++index ) {
        tap_hold_t *th_event = &th_events[index];
        if ( th_event->is_pressed && FUNC1(th_event->timer) > LONGPRESS_DELAY) {
            FUNC0(th_event->kc_hold);
            FUNC2(th_event->kc_hold);
            th_event->is_pressed = false;
        }
    }
}