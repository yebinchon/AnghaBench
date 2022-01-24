#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lwan_thread {int dummy; } ;
struct lwan_connection {int dummy; } ;
struct TYPE_4__ {short count; unsigned int max_fd; int /*<<< orphan*/  barrier; int /*<<< orphan*/ * threads; } ;
struct lwan {TYPE_2__ thread; TYPE_1__* conns; } ;
struct TYPE_3__ {int /*<<< orphan*/ * thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lwan*,int*,int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct lwan*,int*,int) ; 

void FUNC11(struct lwan *l)
{
    if (FUNC7(&l->thread.barrier, NULL,
                             (unsigned)l->thread.count + 1))
        FUNC5("Could not create barrier");

    FUNC6("Initializing threads");

    l->thread.threads =
        FUNC2((size_t)l->thread.count, sizeof(struct lwan_thread));
    if (!l->thread.threads)
        FUNC5("Could not allocate memory for threads");

    for (short i = 0; i < l->thread.count; i++)
        FUNC3(l, &l->thread.threads[i]);

    const unsigned int total_conns = l->thread.max_fd * l->thread.count;
#ifdef __x86_64__
    FUNC9(sizeof(struct lwan_connection) == 32,
                  "Two connections per cache line");
    /*
     * Pre-schedule each file descriptor, to reduce some operations in the
     * fast path.
     *
     * Since struct lwan_connection is guaranteed to be 32-byte long, two of
     * them can fill up a cache line.  Assume siblings share cache lines and
     * use the CPU topology to group two connections per cache line in such
     * a way that false sharing is avoided.
     */
    uint32_t n_threads = (uint32_t)FUNC4((size_t)((l->thread.count - 1) * 2));
    uint32_t *schedtbl = FUNC1(n_threads * sizeof(uint32_t));

    FUNC10(l, schedtbl, n_threads);

    n_threads--; /* Transform count into mask for AND below */
    FUNC0(l, schedtbl, n_threads);
    for (unsigned int i = 0; i < total_conns; i++)
        l->conns[i].thread = &l->thread.threads[schedtbl[i & n_threads]];
#else
    for (unsigned int i = 0; i < total_conns; i++)
        l->conns[i].thread = &l->thread.threads[i % l->thread.count];
#endif

    FUNC8(&l->thread.barrier);

    FUNC6("Worker threads created and ready to serve");
}