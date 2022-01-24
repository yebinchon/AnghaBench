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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  pyb_uart_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pyb_stdio_uart ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 

void FUNC3(const char *str, size_t len) {
    // send stdout to UART and USB CDC VCP
    if (FUNC0(pyb_stdio_uart) != NULL) {
        void FUNC0(pyb_uart_obj_t *uart_obj, const char *str, uint len);
        FUNC0(FUNC0(pyb_stdio_uart), str, len);
    }
    if (FUNC1()) {
        FUNC2(str, len);
    }
}