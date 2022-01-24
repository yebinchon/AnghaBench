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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int,struct sigaction*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(int sig) {
    struct sigaction sa = { .sa_handler = SIG_IGN, .sa_flags = 0 };

    if (FUNC1(&sa.sa_mask) == -1 || FUNC0(sig, &sa, 0) == -1) {
        return -1;
    }
    return 0;
}