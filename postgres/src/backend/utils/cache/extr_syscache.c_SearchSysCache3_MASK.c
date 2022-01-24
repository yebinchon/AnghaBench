#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cc_nkeys; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** SysCache ; 
 int SysCacheSize ; 

HeapTuple
FUNC3(int cacheId,
				Datum key1, Datum key2, Datum key3)
{
	FUNC0(cacheId >= 0 && cacheId < SysCacheSize &&
		   FUNC1(SysCache[cacheId]));
	FUNC0(SysCache[cacheId]->cc_nkeys == 3);

	return FUNC2(SysCache[cacheId], key1, key2, key3);
}