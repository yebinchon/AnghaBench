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
typedef  int /*<<< orphan*/  TypeCacheEntry ;
typedef  int /*<<< orphan*/  RangeType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

bool
FUNC1(TypeCacheEntry *typcache, const RangeType *r1, const RangeType *r2)
{
	return FUNC0(typcache, r2, r1);
}