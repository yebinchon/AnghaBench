#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int useconds_t ;
struct logger_stats {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ logger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_LOGGER_SLEEP ; 
 int MIN_LOGGER_SLEEP ; 
 int /*<<< orphan*/  WATCHER_ALL ; 
 scalar_t__ do_run_logger_thread ; 
 TYPE_1__* logger_stack_head ; 
 int /*<<< orphan*/  logger_stack_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct logger_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct logger_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct logger_stats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void *FUNC8(void *arg) {
    useconds_t to_sleep = MIN_LOGGER_SLEEP;
    FUNC0("LOGGER: Starting logger thread\n");
    // TODO: If we ever have item references in the logger code, will need to
    // ensure everything is dequeued before stopping the thread.
    while (do_run_logger_thread) {
        int found_logs = 0;
        logger *l;
        struct logger_stats ls;
        FUNC4(&ls, 0, sizeof(struct logger_stats));

        /* only sleep if we're *above* the minimum */
        if (to_sleep > MIN_LOGGER_SLEEP)
            FUNC7(to_sleep);

        /* Call function to iterate each logger. */
        FUNC5(&logger_stack_lock);
        for (l = logger_stack_head; l != NULL; l=l->next) {
            /* lock logger, call function to manipulate it */
            found_logs += FUNC2(l, &ls);
        }

        FUNC1(1, WATCHER_ALL);
        FUNC6(&logger_stack_lock);

        /* TODO: abstract into a function and share with lru_crawler */
        if (!found_logs) {
            if (to_sleep < MAX_LOGGER_SLEEP)
                to_sleep += to_sleep / 8;
            if (to_sleep > MAX_LOGGER_SLEEP)
                to_sleep = MAX_LOGGER_SLEEP;
        } else {
            to_sleep /= 2;
            if (to_sleep < MIN_LOGGER_SLEEP)
                to_sleep = MIN_LOGGER_SLEEP;
        }
        FUNC3(&ls);
    }

    return NULL;
}