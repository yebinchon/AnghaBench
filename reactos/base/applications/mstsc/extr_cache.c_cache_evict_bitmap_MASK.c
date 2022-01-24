#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  size_t uint16 ;
struct TYPE_2__ {int next; int /*<<< orphan*/  previous; scalar_t__ bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  NOT_SET ; 
 TYPE_1__** g_bmpcache ; 
 int /*<<< orphan*/ * g_bmpcache_count ; 
 size_t* g_bmpcache_lru ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(uint8 id)
{
	uint16 idx;
	int n_idx;

	if (!FUNC1(id))
		return;

	idx = g_bmpcache_lru[id];
	n_idx = g_bmpcache[id][idx].next;
	FUNC0(("evict bitmap: id=%d idx=%d n_idx=%d bmp=%p\n", id, idx, n_idx,
		    g_bmpcache[id][idx].bitmap));

	FUNC3(g_bmpcache[id][idx].bitmap);
	--g_bmpcache_count[id];
	g_bmpcache[id][idx].bitmap = 0;

	g_bmpcache_lru[id] = n_idx;
	g_bmpcache[id][n_idx].previous = NOT_SET;

	FUNC2(id, idx, 0);
}