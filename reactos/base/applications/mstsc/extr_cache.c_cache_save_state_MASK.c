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
typedef  size_t uint32 ;
struct TYPE_3__ {int next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (TYPE_1__**) ; 
 TYPE_1__** g_bmpcache ; 
 int* g_bmpcache_lru ; 
 int /*<<< orphan*/  FUNC3 (size_t,int,size_t) ; 

void
FUNC4(void)
{
	uint32 id = 0, t = 0;
	int idx;

	for (id = 0; id < FUNC2(g_bmpcache); id++)
		if (FUNC1(id))
		{
			FUNC0(("Saving cache state for bitmap cache %d...", id));
			idx = g_bmpcache_lru[id];
			while (idx >= 0)
			{
				FUNC3(id, idx, ++t);
				idx = g_bmpcache[id][idx].next;
			}
			FUNC0((" %d stamps written.\n", t));
		}
}