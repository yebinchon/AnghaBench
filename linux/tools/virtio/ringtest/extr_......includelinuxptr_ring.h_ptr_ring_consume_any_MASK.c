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
struct ptr_ring {int /*<<< orphan*/  consumer_lock; } ;

/* Variables and functions */
 void* FUNC0 (struct ptr_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void *FUNC3(struct ptr_ring *r)
{
	unsigned long flags;
	void *ptr;

	FUNC1(&r->consumer_lock, flags);
	ptr = FUNC0(r);
	FUNC2(&r->consumer_lock, flags);

	return ptr;
}