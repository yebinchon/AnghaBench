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
struct TYPE_4__ {scalar_t__ drop_privileges; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/ * lru_bump_buf; int /*<<< orphan*/ * l; } ;
typedef  TYPE_1__ LIBEVENT_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__ settings ; 

__attribute__((used)) static void *FUNC7(void *arg) {
    LIBEVENT_THREAD *me = arg;

    /* Any per-thread setup can happen here; memcached_thread_init() will block until
     * all threads have finished initializing.
     */
    me->l = FUNC5();
    me->lru_bump_buf = FUNC4();
    if (me->l == NULL || me->lru_bump_buf == NULL) {
        FUNC0();
    }

    if (settings.drop_privileges) {
        FUNC1();
    }

    FUNC6();

    FUNC3(me->base, 0);

    // same mechanism used to watch for all threads exiting.
    FUNC6();

    FUNC2(me->base);
    return NULL;
}