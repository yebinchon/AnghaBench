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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int allow_new_conns ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void (*) (int const,short const,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_base ; 
 int /*<<< orphan*/  maxconnsevent ; 

__attribute__((used)) static void FUNC5(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 0, .tv_usec = 10000};

    if (fd == -42 || allow_new_conns == false) {
        /* reschedule in 10ms if we need to keep polling */
        FUNC4(&maxconnsevent, maxconns_handler, 0);
        FUNC1(main_base, &maxconnsevent);
        FUNC2(&maxconnsevent, &t);
    } else {
        FUNC3(&maxconnsevent);
        FUNC0(true);
    }
}