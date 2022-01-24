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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int BMPCACHE2_C0_CELLS ; 
 int BMPCACHE2_C1_CELLS ; 
 int BMPCACHE2_C2_CELLS ; 
 int BMPCACHE2_FLAG_PERSIST ; 
 int BMPCACHE2_NUM_PSTCELLS ; 
 int RDP_CAPLEN_BMPCACHE2 ; 
 int RDP_CAPSET_BMPCACHE2 ; 
 scalar_t__ g_bitmap_cache_persist_enable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(STREAM s)
{
	FUNC1(s, RDP_CAPSET_BMPCACHE2);
	FUNC1(s, RDP_CAPLEN_BMPCACHE2);

	FUNC1(s, g_bitmap_cache_persist_enable ? 2 : 0);	/* version */

	FUNC0(s, 3);	/* number of caches in this set */

	/* max cell size for cache 0 is 16x16, 1 = 32x32, 2 = 64x64, etc */
	FUNC2(s, BMPCACHE2_C0_CELLS);
	FUNC2(s, BMPCACHE2_C1_CELLS);
	if (FUNC4(2))
	{
		FUNC2(s, BMPCACHE2_NUM_PSTCELLS | BMPCACHE2_FLAG_PERSIST);
	}
	else
	{
		FUNC2(s, BMPCACHE2_C2_CELLS);
	}
	FUNC3(s, 20);	/* other bitmap caches not used */
}