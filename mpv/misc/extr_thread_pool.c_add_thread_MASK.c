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
struct mp_thread_pool {int /*<<< orphan*/  num_threads; int /*<<< orphan*/  threads; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_thread_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mp_thread_pool*) ; 
 int /*<<< orphan*/  worker_thread ; 

__attribute__((used)) static bool FUNC2(struct mp_thread_pool *pool)
{
    pthread_t thread;

    if (FUNC1(&thread, NULL, worker_thread, pool) != 0)
        return false;

    FUNC0(pool, pool->threads, pool->num_threads, thread);
    return true;
}