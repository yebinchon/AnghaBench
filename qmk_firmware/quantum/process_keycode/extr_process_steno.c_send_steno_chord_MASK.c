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

/* Variables and functions */
 int /*<<< orphan*/  BOLT_STATE_SIZE ; 
 int /*<<< orphan*/  GEMINI_STATE_SIZE ; 
#define  STENO_MODE_BOLT 129 
#define  STENO_MODE_GEMINI 128 
 int* chord ; 
 int mode ; 
 scalar_t__ FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {
    if (FUNC0(mode, chord)) {
        switch (mode) {
            case STENO_MODE_BOLT:
                FUNC1(BOLT_STATE_SIZE, false);
                FUNC3(0);  // terminating byte
                break;
            case STENO_MODE_GEMINI:
                chord[0] |= 0x80;  // Indicate start of packet
                FUNC1(GEMINI_STATE_SIZE, true);
                break;
        }
    }
    FUNC2();
}