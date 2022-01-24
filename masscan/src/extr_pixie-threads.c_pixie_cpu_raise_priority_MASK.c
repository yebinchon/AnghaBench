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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_PRIORITY_HIGHEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC10(void)
{
#if defined WIN32
DWORD_PTR result;
    result = SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_HIGHEST);
    if (result == 0) {
        fprintf(stderr, "set_priority: returned error win32:%u\n", (unsigned)GetLastError());
    }
#elif defined(__linux__) && defined(__GNUC__)
    pthread_t thread = FUNC7();
    pthread_attr_t thAttr;
    int policy = 0;
    int max_prio_for_policy = 0;

    FUNC6(&thAttr);
    FUNC5(&thAttr, &policy);
    max_prio_for_policy = FUNC9(policy);


    FUNC8(thread, max_prio_for_policy);
    FUNC4(&thAttr);
    return;

#endif
}