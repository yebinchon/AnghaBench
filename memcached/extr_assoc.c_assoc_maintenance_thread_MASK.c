#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* h_next; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;
struct TYPE_10__ {int verbose; } ;
struct TYPE_9__ {int hash_bytes; int hash_is_expanding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PAUSE_ALL_THREADS ; 
 int /*<<< orphan*/  RESUME_ALL_THREADS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ do_run_maintenance_thread ; 
 size_t expand_bucket ; 
 int expanding ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hash_bulk_move ; 
 unsigned int FUNC7 (scalar_t__) ; 
 scalar_t__ hashpower ; 
 int FUNC8 (scalar_t__) ; 
 void* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  maintenance_cond ; 
 int /*<<< orphan*/  maintenance_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__** old_hashtable ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__** primary_hashtable ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ settings ; 
 TYPE_2__ stats_state ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void *FUNC16(void *arg) {

    FUNC11(&maintenance_lock);
    while (do_run_maintenance_thread) {
        int ii = 0;

        /* There is only one expansion thread, so no need to global lock. */
        for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
            item *it, *next;
            unsigned int bucket;
            void *item_lock = NULL;

            /* bucket = hv & hashmask(hashpower) =>the bucket of hash table
             * is the lowest N bits of the hv, and the bucket of item_locks is
             *  also the lowest M bits of hv, and N is greater than M.
             *  So we can process expanding with only one item_lock. cool! */
            if ((item_lock = FUNC9(expand_bucket))) {
                    for (it = old_hashtable[expand_bucket]; NULL != it; it = next) {
                        next = it->h_next;
                        bucket = FUNC6(FUNC0(it), it->nkey) & FUNC7(hashpower);
                        it->h_next = primary_hashtable[bucket];
                        primary_hashtable[bucket] = it;
                    }

                    old_hashtable[expand_bucket] = NULL;

                    expand_bucket++;
                    if (expand_bucket == FUNC8(hashpower - 1)) {
                        expanding = false;
                        FUNC5(old_hashtable);
                        FUNC1();
                        stats_state.hash_bytes -= FUNC8(hashpower - 1) * sizeof(void *);
                        stats_state.hash_is_expanding = false;
                        FUNC2();
                        if (settings.verbose > 1)
                            FUNC4(stderr, "Hash table expansion done\n");
                    }

            } else {
                FUNC15(10*1000);
            }

            if (item_lock) {
                FUNC10(item_lock);
                item_lock = NULL;
            }
        }

        if (!expanding) {
            /* We are done expanding.. just wait for next invocation */
            FUNC14(&maintenance_cond, &maintenance_lock);
            /* assoc_expand() swaps out the hash table entirely, so we need
             * all threads to not hold any references related to the hash
             * table while this happens.
             * This is instead of a more complex, possibly slower algorithm to
             * allow dynamic hash table expansion without causing significant
             * wait times.
             */
            if (do_run_maintenance_thread) {
                FUNC13(PAUSE_ALL_THREADS);
                FUNC3();
                FUNC13(RESUME_ALL_THREADS);
            }
        }
    }
    FUNC12(&maintenance_lock);
    return NULL;
}