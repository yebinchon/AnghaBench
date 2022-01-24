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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; } ;

/* Variables and functions */
 char CHAR_CTRL_C ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighandler ; 

void FUNC2(char c) {
    // configure terminal settings to (not) let ctrl-C through
    if (c == CHAR_CTRL_C) {
        #ifndef _WIN32
        // enable signal handler
        struct sigaction sa;
        sa.sa_flags = 0;
        sa.sa_handler = sighandler;
        FUNC1(&sa.sa_mask);
        FUNC0(SIGINT, &sa, NULL);
        #endif
    } else {
        #ifndef _WIN32
        // disable signal handler
        struct sigaction sa;
        sa.sa_flags = 0;
        sa.sa_handler = SIG_DFL;
        FUNC1(&sa.sa_mask);
        FUNC0(SIGINT, &sa, NULL);
        #endif
    }
}