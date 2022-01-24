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
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dupterm_objs ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC3(void) {
    unsigned char c;
#if MICROPY_PY_OS_DUPTERM
    // TODO only support dupterm one slot at the moment
    if (MP_STATE_VM(dupterm_objs[0]) != MP_OBJ_NULL) {
        int c;
        do {
             c = call_dupterm_read(0);
        } while (c == -2);
        if (c == -1) {
            goto main_term;
        }
        if (c == '\n') {
            c = '\r';
        }
        return c;
    } else {
        main_term:;
#endif
        int ret = FUNC2(0, &c, 1);
        if (ret == 0) {
            c = 4; // EOF, ctrl-D
        } else if (c == '\n') {
            c = '\r';
        }
        return c;
#if MICROPY_PY_OS_DUPTERM
    }
#endif
}