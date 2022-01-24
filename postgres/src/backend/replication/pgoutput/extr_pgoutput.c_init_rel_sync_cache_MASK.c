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
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
typedef  int /*<<< orphan*/  RelationSyncEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUBLICATIONRELMAP ; 
 int /*<<< orphan*/ * RelationSyncCache ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  rel_sync_cache_publication_cb ; 
 int /*<<< orphan*/  rel_sync_cache_relation_cb ; 

__attribute__((used)) static void
FUNC6(MemoryContext cachectx)
{
	HASHCTL		ctl;
	MemoryContext old_ctxt;

	if (RelationSyncCache != NULL)
		return;

	/* Make a new hash table for the cache */
	FUNC3(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(Oid);
	ctl.entrysize = sizeof(RelationSyncEntry);
	ctl.hcxt = cachectx;

	old_ctxt = FUNC4(cachectx);
	RelationSyncCache = FUNC5("logical replication output relation cache",
									128, &ctl,
									HASH_ELEM | HASH_CONTEXT | HASH_BLOBS);
	(void) FUNC4(old_ctxt);

	FUNC0(RelationSyncCache != NULL);

	FUNC1(rel_sync_cache_relation_cb, (Datum) 0);
	FUNC2(PUBLICATIONRELMAP,
								  rel_sync_cache_publication_cb,
								  (Datum) 0);
}