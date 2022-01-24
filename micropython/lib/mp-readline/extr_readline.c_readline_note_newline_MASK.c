#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* prompt; int /*<<< orphan*/  orig_line_len; int /*<<< orphan*/  cursor_pos; TYPE_1__* line; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ rl ; 

void FUNC2(const char *prompt) {
    rl.orig_line_len = rl.line->len;
    rl.cursor_pos = rl.orig_line_len;
    rl.prompt = prompt;
    FUNC0(prompt);
    #if MICROPY_REPL_AUTO_INDENT
    readline_auto_indent();
    #endif
}