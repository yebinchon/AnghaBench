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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  key; scalar_t__ opts; } ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ AttoptCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AttoptCacheHash ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(Datum arg, int cacheid, uint32 hashvalue)
{
	HASH_SEQ_STATUS status;
	AttoptCacheEntry *attopt;

	FUNC2(&status, AttoptCacheHash);
	while ((attopt = (AttoptCacheEntry *) FUNC3(&status)) != NULL)
	{
		if (attopt->opts)
			FUNC4(attopt->opts);
		if (FUNC1(AttoptCacheHash,
						(void *) &attopt->key,
						HASH_REMOVE,
						NULL) == NULL)
			FUNC0(ERROR, "hash table corrupted");
	}
}