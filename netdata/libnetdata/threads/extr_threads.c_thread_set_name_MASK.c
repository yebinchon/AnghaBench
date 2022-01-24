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
struct TYPE_3__ {scalar_t__ tag; } ;
typedef  TYPE_1__ NETDATA_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(NETDATA_THREAD *nt) {

    if (nt->tag) {
        int ret = 0;

        // Name is limited to 16 chars
        char threadname[16];
        FUNC6(threadname, nt->tag, 15);

#if defined(__FreeBSD__)
        pthread_set_name_np(pthread_self(), threadname);
#elif defined(__APPLE__)
        ret = pthread_setname_np(threadname);
#else
        ret = FUNC5(FUNC3(), threadname);
#endif

        if (ret != 0)
            FUNC0("cannot set pthread name of %d to %s. ErrCode: %d", FUNC1(), threadname, ret);
        else
            FUNC2("set name of thread %d to %s", FUNC1(), threadname);

    }
}