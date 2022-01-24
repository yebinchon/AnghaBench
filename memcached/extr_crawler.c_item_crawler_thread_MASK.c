#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_21__ {int /*<<< orphan*/  nkey; } ;
typedef  TYPE_2__ item ;
struct TYPE_24__ {int crawls_persleep; int lru_crawler; int verbose; scalar_t__ lru_crawler_sleep; } ;
struct TYPE_23__ {int lru_crawler_running; } ;
struct TYPE_18__ {int /*<<< orphan*/ * c; int /*<<< orphan*/  buf; } ;
struct TYPE_22__ {TYPE_1__* mod; TYPE_10__ c; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* finalize ) (TYPE_3__*) ;scalar_t__ needs_lock; int /*<<< orphan*/  (* eval ) (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int) ;scalar_t__ needs_client; } ;
struct TYPE_19__ {int it_flags; int remaining; int /*<<< orphan*/  checked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int LARGEST_ID ; 
 int POWER_SMALLEST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ active_crawler_mod ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ crawler_count ; 
 TYPE_15__* crawlers ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 scalar_t__ do_run_lru_crawler_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (TYPE_10__*) ; 
 int /*<<< orphan*/  lru_crawler_cond ; 
 int /*<<< orphan*/  lru_crawler_lock ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*) ; 
 int /*<<< orphan*/ * lru_locks ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*) ; 
 TYPE_7__ settings ; 
 TYPE_6__ stats_state ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

__attribute__((used)) static void *FUNC22(void *arg) {
    int i;
    int crawls_persleep = settings.crawls_persleep;

    FUNC15(&lru_crawler_lock);
    FUNC13(&lru_crawler_cond);
    settings.lru_crawler = true;
    if (settings.verbose > 2)
        FUNC5(stderr, "Starting LRU crawler background thread\n");
    while (do_run_lru_crawler_thread) {
    FUNC14(&lru_crawler_cond, &lru_crawler_lock);

    while (crawler_count) {
        item *search = NULL;
        void *hold_lock = NULL;

        for (i = POWER_SMALLEST; i < LARGEST_ID; i++) {
            if (crawlers[i].it_flags != 1) {
                continue;
            }

            /* Get memory from bipbuf, if client has no space, flush. */
            if (active_crawler_mod.c.c != NULL) {
                int ret = FUNC10(&active_crawler_mod.c);
                if (ret != 0) {
                    FUNC9(i);
                    continue;
                }
            } else if (active_crawler_mod.mod->needs_client) {
                FUNC9(i);
                continue;
            }
            FUNC15(&lru_locks[i]);
            search = FUNC4((item *)&crawlers[i]);
            if (search == NULL ||
                (crawlers[i].remaining && --crawlers[i].remaining < 1)) {
                if (settings.verbose > 2)
                    FUNC5(stderr, "Nothing left to crawl for %d\n", i);
                FUNC9(i);
                continue;
            }
            uint32_t hv = FUNC6(FUNC0(search), search->nkey);
            /* Attempt to hash item lock the "search" item. If locked, no
             * other callers can incr the refcount
             */
            if ((hold_lock = FUNC7(hv)) == NULL) {
                FUNC16(&lru_locks[i]);
                continue;
            }
            /* Now see if the item is refcount locked */
            if (FUNC18(search) != 2) {
                FUNC17(search);
                if (hold_lock)
                    FUNC8(hold_lock);
                FUNC16(&lru_locks[i]);
                continue;
            }

            crawlers[i].checked++;
            /* Frees the item or decrements the refcount. */
            /* Interface for this could improve: do the free/decr here
             * instead? */
            if (!active_crawler_mod.mod->needs_lock) {
                FUNC16(&lru_locks[i]);
            }

            active_crawler_mod.mod->eval(&active_crawler_mod, search, hv, i);

            if (hold_lock)
                FUNC8(hold_lock);
            if (active_crawler_mod.mod->needs_lock) {
                FUNC16(&lru_locks[i]);
            }

            if (crawls_persleep-- <= 0 && settings.lru_crawler_sleep) {
                FUNC16(&lru_crawler_lock);
                FUNC21(settings.lru_crawler_sleep);
                FUNC15(&lru_crawler_lock);
                crawls_persleep = settings.crawls_persleep;
            } else if (!settings.lru_crawler_sleep) {
                // TODO: only cycle lock every N?
                FUNC16(&lru_crawler_lock);
                FUNC15(&lru_crawler_lock);
            }
        }
    }

    if (active_crawler_mod.mod != NULL) {
        if (active_crawler_mod.mod->finalize != NULL)
            active_crawler_mod.mod->finalize(&active_crawler_mod);
        while (active_crawler_mod.c.c != NULL && FUNC3(active_crawler_mod.c.buf)) {
            FUNC11(&active_crawler_mod.c);
        }
        // Double checking in case the client closed during the poll
        if (active_crawler_mod.c.c != NULL) {
            FUNC12(&active_crawler_mod.c);
        }
        active_crawler_mod.mod = NULL;
    }

    if (settings.verbose > 2)
        FUNC5(stderr, "LRU crawler thread sleeping\n");

    FUNC1();
    stats_state.lru_crawler_running = false;
    FUNC2();
    }
    FUNC16(&lru_crawler_lock);
    if (settings.verbose > 2)
        FUNC5(stderr, "LRU crawler thread stopping\n");
    settings.lru_crawler = false;

    return NULL;
}