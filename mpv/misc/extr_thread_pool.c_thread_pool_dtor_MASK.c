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
struct mp_thread_pool {int terminate; int num_threads; scalar_t__ num_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; int /*<<< orphan*/ * threads; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *ctx)
{
    struct mp_thread_pool *pool = ctx;


    FUNC5(&pool->lock);

    pool->terminate = true;
    FUNC1(&pool->wakeup);

    pthread_t *threads = pool->threads;
    int num_threads = pool->num_threads;

    pool->threads = NULL;
    pool->num_threads = 0;

    FUNC6(&pool->lock);

    for (int n = 0; n < num_threads; n++)
        FUNC3(threads[n], NULL);

    FUNC0(pool->num_work == 0);
    FUNC0(pool->num_threads == 0);
    FUNC2(&pool->wakeup);
    FUNC4(&pool->lock);
}