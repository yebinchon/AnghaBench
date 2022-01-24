#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int options; int /*<<< orphan*/  arg; void* (* start_routine ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ NETDATA_THREAD ;

/* Variables and functions */
 int NETDATA_THREAD_OPTION_DONT_LOG_STARTUP ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_DEFERRED ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* netdata_thread ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_cleanup ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void *FUNC9(void *ptr) {
    netdata_thread = (NETDATA_THREAD *)ptr;

    if(!(netdata_thread->options & NETDATA_THREAD_OPTION_DONT_LOG_STARTUP))
        FUNC2("thread created with task id %d", FUNC1());

    if(FUNC6(PTHREAD_CANCEL_DEFERRED, NULL) != 0)
        FUNC0("cannot set pthread cancel type to DEFERRED.");

    if(FUNC5(PTHREAD_CANCEL_ENABLE, NULL) != 0)
        FUNC0("cannot set pthread cancel state to ENABLE.");

    FUNC8(ptr);

    void *ret = NULL;
    FUNC4(thread_cleanup, ptr);
            ret = netdata_thread->start_routine(netdata_thread->arg);
    FUNC3(1);

    return ret;
}