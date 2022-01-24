#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  report_keyboard_t ;

/* Variables and functions */
 size_t KBUF_SIZE ; 
 int VUSB_TRANSFER_KEYBOARD_MAX_TRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ debug_keyboard ; 
 int /*<<< orphan*/ * kbuf ; 
 size_t kbuf_head ; 
 size_t kbuf_tail ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 

void FUNC7(void) {
    for (int i = 0; i < VUSB_TRANSFER_KEYBOARD_MAX_TRIES; i++) {
        if (FUNC4()) {
            if (kbuf_head != kbuf_tail) {
                FUNC6((void *)&kbuf[kbuf_tail], sizeof(report_keyboard_t));
                kbuf_tail = (kbuf_tail + 1) % KBUF_SIZE;
                if (debug_keyboard) {
                    FUNC3("V-USB: kbuf[");
                    FUNC1(kbuf_tail);
                    FUNC3("->");
                    FUNC1(kbuf_head);
                    FUNC3("](");
                    FUNC2((kbuf_head < kbuf_tail) ? (KBUF_SIZE - kbuf_tail + kbuf_head) : (kbuf_head - kbuf_tail));
                    FUNC3(")\n");
                }
            }
            break;
        }
        FUNC5();
        FUNC0(1);
    }
}