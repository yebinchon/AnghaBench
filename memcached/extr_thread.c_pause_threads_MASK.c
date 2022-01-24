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
typedef  enum pause_thread_types { ____Placeholder_pause_thread_types } pause_thread_types ;
struct TYPE_4__ {int num_threads; } ;
struct TYPE_3__ {int /*<<< orphan*/  notify_send_fd; } ;

/* Variables and functions */
#define  PAUSE_ALL_THREADS 131 
#define  PAUSE_WORKER_THREADS 130 
#define  RESUME_ALL_THREADS 129 
#define  RESUME_WORKER_THREADS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ init_count ; 
 int /*<<< orphan*/  init_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* threads ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  worker_hang_lock ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC17(enum pause_thread_types type) {
    char buf[1];
    int i;

    buf[0] = 0;
    switch (type) {
        case PAUSE_ALL_THREADS:
            FUNC9();
            FUNC4();
            FUNC2();
#ifdef EXTSTORE
            storage_compact_pause();
            storage_write_pause();
#endif
        case PAUSE_WORKER_THREADS:
            buf[0] = 'p';
            FUNC7(&worker_hang_lock);
            break;
        case RESUME_ALL_THREADS:
            FUNC10();
            FUNC5();
            FUNC3();
#ifdef EXTSTORE
            storage_compact_resume();
            storage_write_resume();
#endif
        case RESUME_WORKER_THREADS:
            FUNC8(&worker_hang_lock);
            break;
        default:
            FUNC1(stderr, "Unknown lock type: %d\n", type);
            FUNC0(1 == 0);
            break;
    }

    /* Only send a message if we have one. */
    if (buf[0] == 0) {
        return;
    }

    FUNC7(&init_lock);
    init_count = 0;
    for (i = 0; i < settings.num_threads; i++) {
        if (FUNC16(threads[i].notify_send_fd, buf, 1) != 1) {
            FUNC6("Failed writing to notify pipe");
            /* TODO: This is a fatal problem. Can it ever happen temporarily? */
        }
    }
    FUNC15(settings.num_threads);
    FUNC8(&init_lock);
}