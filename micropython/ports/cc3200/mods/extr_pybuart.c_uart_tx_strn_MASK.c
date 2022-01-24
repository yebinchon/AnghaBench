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
typedef  int uint ;
typedef  int /*<<< orphan*/  pyb_uart_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 

bool FUNC1(pyb_uart_obj_t *self, const char *str, uint len) {
    for (const char *top = str + len; str < top; str++) {
        if (!FUNC0(self, *str)) {
            return false;
        }
    }
    return true;
}