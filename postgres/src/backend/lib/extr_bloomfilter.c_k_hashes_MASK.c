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
typedef  int uint64 ;
typedef  scalar_t__ uint32 ;
struct TYPE_3__ {int m; int k_hash_funcs; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ bloom_filter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(bloom_filter *filter, uint32 *hashes, unsigned char *elem, size_t len)
{
	uint64		hash;
	uint32		x,
				y;
	uint64		m;
	int			i;

	/* Use 64-bit hashing to get two independent 32-bit hashes */
	hash = FUNC0(FUNC1(elem, len, filter->seed));
	x = (uint32) hash;
	y = (uint32) (hash >> 32);
	m = filter->m;

	x = FUNC2(x, m);
	y = FUNC2(y, m);

	/* Accumulate hashes */
	hashes[0] = x;
	for (i = 1; i < filter->k_hash_funcs; i++)
	{
		x = FUNC2(x + y, m);
		y = FUNC2(y + i, m);

		hashes[i] = x;
	}
}