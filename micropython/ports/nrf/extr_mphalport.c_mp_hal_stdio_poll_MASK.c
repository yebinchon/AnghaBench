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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 uintptr_t MP_STREAM_POLL_RD ; 
 int /*<<< orphan*/  board_stdio_uart ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

uintptr_t FUNC2(uintptr_t poll_flags) {
    uintptr_t ret = 0;
    if ((poll_flags & MP_STREAM_POLL_RD) && FUNC0(board_stdio_uart) != NULL
        && FUNC1(FUNC0(board_stdio_uart))) {
        ret |= MP_STREAM_POLL_RD;
    }
    return ret;
}