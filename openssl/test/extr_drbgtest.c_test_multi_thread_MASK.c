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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int THREADS ; 
 int /*<<< orphan*/  multi_thread_rand_bytes_succeeded ; 
 int /*<<< orphan*/  multi_thread_rand_priv_bytes_succeeded ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
    thread_t t[THREADS];
    int i;

    for (i = 0; i < THREADS; i++)
        FUNC2(&t[i]);
    FUNC1();
    for (i = 0; i < THREADS; i++)
        FUNC3(t[i]);

    if (!FUNC0(multi_thread_rand_bytes_succeeded))
        return 0;
    if (!FUNC0(multi_thread_rand_priv_bytes_succeeded))
        return 0;

    return 1;
}