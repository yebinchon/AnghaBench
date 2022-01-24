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
struct ptr_ring {int /*<<< orphan*/  consumer_lock; int /*<<< orphan*/  producer_lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 void** FUNC0 (int,int /*<<< orphan*/ ) ; 
 void** FUNC1 (struct ptr_ring*,void**,int,int /*<<< orphan*/ ,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC2 (void***) ; 
 void*** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC9(struct ptr_ring **rings,
					   unsigned int nrings,
					   int size,
					   gfp_t gfp, void (*destroy)(void *))
{
	unsigned long flags;
	void ***queues;
	int i;

	queues = FUNC3(nrings, sizeof(*queues), gfp);
	if (!queues)
		goto noqueues;

	for (i = 0; i < nrings; ++i) {
		queues[i] = FUNC0(size, gfp);
		if (!queues[i])
			goto nomem;
	}

	for (i = 0; i < nrings; ++i) {
		FUNC6(&(rings[i])->consumer_lock, flags);
		FUNC5(&(rings[i])->producer_lock);
		queues[i] = FUNC1(rings[i], queues[i],
						  size, gfp, destroy);
		FUNC7(&(rings[i])->producer_lock);
		FUNC8(&(rings[i])->consumer_lock, flags);
	}

	for (i = 0; i < nrings; ++i)
		FUNC4(queues[i]);

	FUNC2(queues);

	return 0;

nomem:
	while (--i >= 0)
		FUNC4(queues[i]);

	FUNC2(queues);

noqueues:
	return -ENOMEM;
}