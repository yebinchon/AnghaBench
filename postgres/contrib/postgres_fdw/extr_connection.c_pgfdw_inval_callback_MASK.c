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
typedef  scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ server_hashvalue; scalar_t__ mapping_hashvalue; int invalidated; int /*<<< orphan*/ * conn; } ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ConnCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ConnectionHash ; 
 int FOREIGNSERVEROID ; 
 int USERMAPPINGOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Datum arg, int cacheid, uint32 hashvalue)
{
	HASH_SEQ_STATUS scan;
	ConnCacheEntry *entry;

	FUNC0(cacheid == FOREIGNSERVEROID || cacheid == USERMAPPINGOID);

	/* ConnectionHash must exist already, if we're registered */
	FUNC1(&scan, ConnectionHash);
	while ((entry = (ConnCacheEntry *) FUNC2(&scan)))
	{
		/* Ignore invalid entries */
		if (entry->conn == NULL)
			continue;

		/* hashvalue == 0 means a cache reset, must clear all state */
		if (hashvalue == 0 ||
			(cacheid == FOREIGNSERVEROID &&
			 entry->server_hashvalue == hashvalue) ||
			(cacheid == USERMAPPINGOID &&
			 entry->mapping_hashvalue == hashvalue))
			entry->invalidated = true;
	}
}