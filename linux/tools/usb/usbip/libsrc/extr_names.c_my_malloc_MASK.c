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
struct pool {void* mem; struct pool* next; } ;

/* Variables and functions */
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 struct pool* pool_head ; 

__attribute__((used)) static void *FUNC2(size_t size)
{
	struct pool *p;

	p = FUNC0(1, sizeof(struct pool));
	if (!p)
		return NULL;

	p->mem = FUNC0(1, size);
	if (!p->mem) {
		FUNC1(p);
		return NULL;
	}

	p->next = pool_head;
	pool_head = p;

	return p->mem;
}