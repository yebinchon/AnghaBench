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
struct catclist {int dummy; } ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct catclist* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SysCache ; 
 int SysCacheSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

struct catclist *
FUNC3(int cacheId, int nkeys,
				   Datum key1, Datum key2, Datum key3)
{
	if (cacheId < 0 || cacheId >= SysCacheSize ||
		!FUNC0(SysCache[cacheId]))
		FUNC2(ERROR, "invalid cache ID: %d", cacheId);

	return FUNC1(SysCache[cacheId], nkeys,
							  key1, key2, key3);
}