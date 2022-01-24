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
struct m_thread_info {int /*<<< orphan*/  handle; void* res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_thread_info*) ; 
 struct m_thread_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pthread_table_lock ; 
 int /*<<< orphan*/  FUNC6 (struct m_thread_info*) ; 

void FUNC7(void *retval)
{
    FUNC3(&pthread_table_lock);
    struct m_thread_info *info = FUNC2(FUNC5());
    FUNC1(info); // not started with pthread_create, or pthread_join() race
    info->res = retval;
    if (!info->handle)
        FUNC6(info); // detached case
    FUNC4(&pthread_table_lock);

    FUNC0(0);
}