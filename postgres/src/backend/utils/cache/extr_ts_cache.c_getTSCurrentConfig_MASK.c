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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * TSConfigCacheHash ; 
 char* TSCurrentConfig ; 
 int /*<<< orphan*/  TSCurrentConfigCache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

Oid
FUNC5(bool emitError)
{
	/* if we have a cached value, return it */
	if (FUNC0(TSCurrentConfigCache))
		return TSCurrentConfigCache;

	/* fail if GUC hasn't been set up yet */
	if (TSCurrentConfig == NULL || *TSCurrentConfig == '\0')
	{
		if (emitError)
			FUNC1(ERROR, "text search configuration isn't set");
		else
			return InvalidOid;
	}

	if (TSConfigCacheHash == NULL)
	{
		/* First time through: initialize the tsconfig inval callback */
		FUNC3();
	}

	/* Look up the config */
	TSCurrentConfigCache =
		FUNC2(FUNC4(TSCurrentConfig),
						  !emitError);

	return TSCurrentConfigCache;
}