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
struct nn_thread {int dummy; } ;

/* Variables and functions */
 int THREAD_COUNT ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC0 (struct nn_thread*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_thread*) ; 
 int /*<<< orphan*/  server ; 

int FUNC2()
{
    int i;
    struct nn_thread srv_thread;
    struct nn_thread cli_threads[THREAD_COUNT];
    /*  Stress the shutdown algorithm. */
    FUNC0(&srv_thread, server, NULL);

    for (i = 0; i != THREAD_COUNT; ++i)
        FUNC0(&cli_threads[i], client, (void *)(intptr_t)i);
    for (i = 0; i != THREAD_COUNT; ++i)
        FUNC1(&cli_threads[i]);

    return 0;
}