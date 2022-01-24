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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CacheInitialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * SysCache ; 
 int SysCacheSize ; 

void
FUNC2(void)
{
	int			cacheId;

	FUNC0(CacheInitialized);

	for (cacheId = 0; cacheId < SysCacheSize; cacheId++)
		FUNC1(SysCache[cacheId], true);
}