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
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC7(struct ptr_ring *r, int size, gfp_t gfp,
				  void (*destroy)(void *))
{
	unsigned long flags;
	void **queue = FUNC0(size, gfp);
	void **old;

	if (!queue)
		return -ENOMEM;

	FUNC4(&(r)->consumer_lock, flags);
	FUNC3(&(r)->producer_lock);

	old = FUNC1(r, queue, size, gfp, destroy);

	FUNC5(&(r)->producer_lock);
	FUNC6(&(r)->consumer_lock, flags);

	FUNC2(old);

	return 0;
}