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
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_4__ {int keysize; int entrysize; void* hcxt; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LogicalRepTyp ;
typedef  int /*<<< orphan*/  LogicalRepRelMapEntry ;
typedef  int /*<<< orphan*/  LogicalRepRelId ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 void* LogicalRepRelMap ; 
 void* LogicalRepRelMapContext ; 
 void* LogicalRepTypMap ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  logicalrep_relmap_invalidate_cb ; 

__attribute__((used)) static void
FUNC4(void)
{
	HASHCTL		ctl;

	if (!LogicalRepRelMapContext)
		LogicalRepRelMapContext =
			FUNC0(CacheMemoryContext,
								  "LogicalRepRelMapContext",
								  ALLOCSET_DEFAULT_SIZES);

	/* Initialize the relation hash table. */
	FUNC2(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(LogicalRepRelId);
	ctl.entrysize = sizeof(LogicalRepRelMapEntry);
	ctl.hcxt = LogicalRepRelMapContext;

	LogicalRepRelMap = FUNC3("logicalrep relation map cache", 128, &ctl,
								   HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	/* Initialize the type hash table. */
	FUNC2(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(Oid);
	ctl.entrysize = sizeof(LogicalRepTyp);
	ctl.hcxt = LogicalRepRelMapContext;

	/* This will usually be small. */
	LogicalRepTypMap = FUNC3("logicalrep type map cache", 2, &ctl,
								   HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	/* Watch for invalidation events. */
	FUNC1(logicalrep_relmap_invalidate_cb,
								  (Datum) 0);
}