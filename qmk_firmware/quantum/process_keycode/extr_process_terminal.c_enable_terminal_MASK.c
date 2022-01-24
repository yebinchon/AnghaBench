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
 int CMD_BUFF_SIZE ; 
 int /*<<< orphan*/ * arguments ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  cmd_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int terminal_enabled ; 
 int /*<<< orphan*/  terminal_prompt ; 

void FUNC3(void) {
    terminal_enabled = true;
    FUNC2(buffer, "");
    FUNC0(cmd_buffer, 0, CMD_BUFF_SIZE * 80);
    for (int i = 0; i < 6; i++) FUNC2(arguments[i], "");
    // select all text to start over
    // SEND_STRING(SS_LCTRL("a"));
    FUNC1(terminal_prompt);
}