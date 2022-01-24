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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHMEMROLEMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  RoleMembershipCacheCallback ; 

void
FUNC2(void)
{
	if (!FUNC1())
	{
		/*
		 * In normal mode, set a callback on any syscache invalidation of
		 * pg_auth_members rows
		 */
		FUNC0(AUTHMEMROLEMEM,
									  RoleMembershipCacheCallback,
									  (Datum) 0);
	}
}