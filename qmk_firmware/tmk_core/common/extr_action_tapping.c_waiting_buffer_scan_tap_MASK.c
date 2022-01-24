#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  pressed; int /*<<< orphan*/  key; } ;
struct TYPE_9__ {int count; } ;
struct TYPE_10__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_12__ {TYPE_2__ tap; TYPE_3__ event; } ;
struct TYPE_8__ {int count; } ;
struct TYPE_11__ {TYPE_1__ tap; TYPE_7__ event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int WAITING_BUFFER_SIZE ; 
 scalar_t__ FUNC1 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 TYPE_5__ tapping_key ; 
 TYPE_4__* waiting_buffer ; 
 int waiting_buffer_head ; 
 int waiting_buffer_tail ; 

void FUNC6(void) {
    // tapping already is settled
    if (tapping_key.tap.count > 0) return;
    // invalid state: tapping_key released && tap.count == 0
    if (!tapping_key.event.pressed) return;

    for (uint8_t i = waiting_buffer_tail; i != waiting_buffer_head; i = (i + 1) % WAITING_BUFFER_SIZE) {
        if (FUNC0(waiting_buffer[i].event.key) && !waiting_buffer[i].event.pressed && FUNC1(waiting_buffer[i].event)) {
            tapping_key.tap.count       = 1;
            waiting_buffer[i].tap.count = 1;
            FUNC5(&tapping_key);

            FUNC2("waiting_buffer_scan_tap: found at [");
            FUNC3(i);
            FUNC2("]\n");
            FUNC4();
            return;
        }
    }
}