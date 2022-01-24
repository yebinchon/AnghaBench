#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destructor_run_count ; 
 int /*<<< orphan*/  thread_local_key ; 
 int thread_local_thread_cb_ok ; 

__attribute__((used)) static void FUNC5(void)
{
    void *ptr;

    ptr = FUNC0(&thread_local_key);
    if (!FUNC3(ptr)
        || !FUNC4(FUNC1(&thread_local_key,
                                              &destructor_run_count)))
        return;

    ptr = FUNC0(&thread_local_key);
    if (!FUNC2(ptr, &destructor_run_count))
        return;

    thread_local_thread_cb_ok = 1;
}