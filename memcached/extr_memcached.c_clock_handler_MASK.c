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
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
struct timespec {scalar_t__ tv_sec; } ;
typedef  scalar_t__ rel_time_t ;
struct TYPE_4__ {int sig_hup; int /*<<< orphan*/  auth_file; } ;
struct TYPE_3__ {int /*<<< orphan*/  curr_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  clockevent ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void (*) (int const,short const,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_base ; 
 scalar_t__ monotonic ; 
 scalar_t__ monotonic_start ; 
 int process_started ; 
 TYPE_2__ settings ; 
 TYPE_1__ stats_state ; 

__attribute__((used)) static void FUNC8(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 1, .tv_usec = 0};
    static bool initialized = false;

    if (initialized) {
        /* only delete the event if it's actually there. */
        FUNC5(&clockevent);
    } else {
        initialized = true;
    }

    // While we're here, check for hash table expansion.
    // This function should be quick to avoid delaying the timer.
    FUNC0(stats_state.curr_items);
    // also, if HUP'ed we need to do some maintenance.
    // for now that's just the authfile reload.
    if (settings.sig_hup) {
        settings.sig_hup = false;

        FUNC1(settings.auth_file);
    }

    FUNC6(&clockevent, clock_handler, 0);
    FUNC3(main_base, &clockevent);
    FUNC4(&clockevent, &t);

#if defined(HAVE_CLOCK_GETTIME) && defined(CLOCK_MONOTONIC)
    if (monotonic) {
        struct timespec ts;
        if (clock_gettime(CLOCK_MONOTONIC, &ts) == -1)
            return;
        current_time = (rel_time_t) (ts.tv_sec - monotonic_start);
        return;
    }
#endif
    {
        struct timeval tv;
        FUNC7(&tv, NULL);
        current_time = (rel_time_t) (tv.tv_sec - process_started);
    }
}