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
struct ptr_ring {int producer; void** queue; scalar_t__ consumer_tail; scalar_t__ consumer_head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (struct ptr_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ptr_ring*,int) ; 

__attribute__((used)) static inline void **FUNC2(struct ptr_ring *r, void **queue,
					   int size, gfp_t gfp,
					   void (*destroy)(void *))
{
	int producer = 0;
	void **old;
	void *ptr;

	while ((ptr = FUNC0(r)))
		if (producer < size)
			queue[producer++] = ptr;
		else if (destroy)
			destroy(ptr);

	if (producer >= size)
		producer = 0;
	FUNC1(r, size);
	r->producer = producer;
	r->consumer_head = 0;
	r->consumer_tail = 0;
	old = r->queue;
	r->queue = queue;

	return old;
}