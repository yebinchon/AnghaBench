#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_6__ {int reserved_fds; } ;
struct TYPE_5__ {int notify_receive_fd; int notify_send_fd; void* storage; } ;
typedef  int /*<<< orphan*/  LIBEVENT_THREAD ;

/* Variables and functions */
 int POWER_LARGEST ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/ * cqi_freelist ; 
 int /*<<< orphan*/  cqi_freelist_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int hashpower ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  init_cond ; 
 int /*<<< orphan*/  init_lock ; 
 int item_lock_count ; 
 int item_lock_hashpower ; 
 int /*<<< orphan*/ * item_locks ; 
 int /*<<< orphan*/ * lru_locks ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_2__ stats_state ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* threads ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  worker_hang_lock ; 
 int /*<<< orphan*/  worker_libevent ; 

void FUNC13(int nthreads, void *arg) {
    int         i;
    int         power;

    for (i = 0; i < POWER_LARGEST; i++) {
        FUNC8(&lru_locks[i], NULL);
    }
    FUNC8(&worker_hang_lock, NULL);

    FUNC8(&init_lock, NULL);
    FUNC7(&init_cond, NULL);

    FUNC8(&cqi_freelist_lock, NULL);
    cqi_freelist = NULL;

    /* Want a wide lock table, but don't waste memory */
    if (nthreads < 3) {
        power = 10;
    } else if (nthreads < 4) {
        power = 11;
    } else if (nthreads < 5) {
        power = 12;
    } else if (nthreads <= 10) {
        power = 13;
    } else if (nthreads <= 20) {
        power = 14;
    } else {
        /* 32k buckets. just under the hashpower default. */
        power = 15;
    }

    if (power >= hashpower) {
        FUNC3(stderr, "Hash table power size (%d) cannot be equal to or less than item lock table (%d)\n", hashpower, power);
        FUNC3(stderr, "Item lock table grows with `-t N` (worker threadcount)\n");
        FUNC3(stderr, "Hash table grows with `-o hashpower=N` \n");
        FUNC2(1);
    }

    item_lock_count = FUNC4(power);
    item_lock_hashpower = power;

    item_locks = FUNC0(item_lock_count, sizeof(pthread_mutex_t));
    if (! item_locks) {
        FUNC5("Can't allocate item locks");
        FUNC2(1);
    }
    for (i = 0; i < item_lock_count; i++) {
        FUNC8(&item_locks[i], NULL);
    }

    threads = FUNC0(nthreads, sizeof(LIBEVENT_THREAD));
    if (! threads) {
        FUNC5("Can't allocate thread descriptors");
        FUNC2(1);
    }

    for (i = 0; i < nthreads; i++) {
        int fds[2];
        if (FUNC6(fds)) {
            FUNC5("Can't create notify pipe");
            FUNC2(1);
        }

        threads[i].notify_receive_fd = fds[0];
        threads[i].notify_send_fd = fds[1];
#ifdef EXTSTORE
        threads[i].storage = arg;
#endif
        FUNC11(&threads[i]);
        /* Reserve three fds for the libevent base, and two for the pipe */
        stats_state.reserved_fds += 5;
    }

    /* Create threads after we've done all the libevent setup. */
    for (i = 0; i < nthreads; i++) {
        FUNC1(worker_libevent, &threads[i]);
    }

    /* Wait for all the threads to set themselves up before returning. */
    FUNC9(&init_lock);
    FUNC12(nthreads);
    FUNC10(&init_lock);
}