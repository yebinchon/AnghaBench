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
struct m_thread_info {struct m_thread_info* handle; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_thread_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct m_thread_info*) ; 
 struct m_thread_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  pthread_table_lock ; 

int FUNC8(pthread_t thread)
{
    if (!FUNC4(thread, FUNC7()))
        FUNC1(); // restriction of this wrapper

    FUNC5(&pthread_table_lock);
    struct m_thread_info *info = FUNC3(thread);
    FUNC2(info); // not started with pthread_create
    FUNC2(info->handle); // already detached
    FUNC0(info->handle);
    info->handle = NULL;
    FUNC6(&pthread_table_lock);

    return 0;
}