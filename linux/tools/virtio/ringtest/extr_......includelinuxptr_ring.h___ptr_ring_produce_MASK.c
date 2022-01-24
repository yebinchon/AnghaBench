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
struct ptr_ring {size_t size; size_t producer; scalar_t__* queue; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct ptr_ring *r, void *ptr)
{
	if (FUNC2(!r->size) || r->queue[r->producer])
		return -ENOSPC;

	/* Make sure the pointer we are storing points to a valid data. */
	/* Pairs with smp_read_barrier_depends in __ptr_ring_consume. */
	FUNC1();

	FUNC0(r->queue[r->producer++], ptr);
	if (FUNC2(r->producer >= r->size))
		r->producer = 0;
	return 0;
}