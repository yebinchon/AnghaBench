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
struct TYPE_4__ {scalar_t__ verbose; int num_threads; } ;
struct TYPE_3__ {int /*<<< orphan*/  notify_send_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRAWLER_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ init_count ; 
 int /*<<< orphan*/  init_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* threads ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC12(void) {
    char buf[1];
    int i;

    // assoc can call pause_threads(), so we have to stop it first.
    FUNC5();
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped assoc\n");

    if (settings.verbose > 0)
        FUNC0(stderr, "asking workers to stop\n");
    buf[0] = 's';
    FUNC3(&init_lock);
    init_count = 0;
    for (i = 0; i < settings.num_threads; i++) {
        if (FUNC11(threads[i].notify_send_fd, buf, 1) != 1) {
            FUNC2("Failed writing to notify pipe");
            /* TODO: This is a fatal problem. Can it ever happen temporarily? */
        }
    }
    FUNC10(settings.num_threads);
    FUNC4(&init_lock);

    if (settings.verbose > 0)
        FUNC0(stderr, "asking background threads to stop\n");

    // stop each side thread.
    // TODO: Verify these all work if the threads are already stopped
    FUNC7(CRAWLER_WAIT);
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped lru crawler\n");
    FUNC8();
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped maintainer\n");
    FUNC9();
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped slab mover\n");
    FUNC1();
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped logger thread\n");
    FUNC6();
    if (settings.verbose > 0)
        FUNC0(stderr, "stopped idle timeout thread\n");

    if (settings.verbose > 0)
        FUNC0(stderr, "all background threads stopped\n");

    // At this point, every background thread must be stopped.
}