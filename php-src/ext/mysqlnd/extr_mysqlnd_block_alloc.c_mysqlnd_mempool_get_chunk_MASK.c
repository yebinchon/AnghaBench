#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* last; int /*<<< orphan*/  arena; } ;
typedef  TYPE_1__ MYSQLND_MEMORY_POOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void *
FUNC3(MYSQLND_MEMORY_POOL * pool, size_t size)
{
	void *ptr = NULL;
	FUNC0("mysqlnd_mempool_get_chunk");

	ptr = FUNC2(&pool->arena, size);
	pool->last = ptr;

	FUNC1(ptr);
}