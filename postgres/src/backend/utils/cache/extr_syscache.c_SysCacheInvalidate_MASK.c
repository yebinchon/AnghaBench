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
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SysCache ; 
 int SysCacheSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC3(int cacheId, uint32 hashValue)
{
	if (cacheId < 0 || cacheId >= SysCacheSize)
		FUNC2(ERROR, "invalid cache ID: %d", cacheId);

	/* if this cache isn't initialized yet, no need to do anything */
	if (!FUNC1(SysCache[cacheId]))
		return;

	FUNC0(SysCache[cacheId], hashValue);
}