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
typedef  int /*<<< orphan*/  thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  once_do_run ; 
 int /*<<< orphan*/  once_run ; 
 int /*<<< orphan*/  once_run_count ; 
 int /*<<< orphan*/  once_run_thread_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
    thread_t thread;

    if (!FUNC2(FUNC3(&thread, once_run_thread_cb))
        || !FUNC2(FUNC4(thread))
        || !FUNC0(&once_run, once_do_run)
        || !FUNC1(once_run_count, 1))
        return 0;
    return 1;
}