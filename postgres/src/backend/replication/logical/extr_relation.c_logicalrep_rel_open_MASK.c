#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_21__ {int /*<<< orphan*/  attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_19__ {int natts; scalar_t__ replident; int /*<<< orphan*/  attkeys; int /*<<< orphan*/  relname; int /*<<< orphan*/  nspname; } ;
struct TYPE_20__ {int* attrmap; int updatable; scalar_t__ state; int /*<<< orphan*/  statelsn; int /*<<< orphan*/  localreloid; TYPE_11__* localrel; TYPE_3__ remoterel; } ;
struct TYPE_18__ {int natts; } ;
struct TYPE_17__ {int /*<<< orphan*/  relkind; } ;
struct TYPE_16__ {int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ LogicalRepRelation ;
typedef  TYPE_4__ LogicalRepRelMapEntry ;
typedef  int /*<<< orphan*/  LogicalRepRelId ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_5__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_IDENTITY_KEY ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_PRIMARY_KEY ; 
 int /*<<< orphan*/ * LogicalRepRelMap ; 
 int /*<<< orphan*/  LogicalRepRelMapContext ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_14__* MySubscription ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC8 (TYPE_11__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREL_STATE_READY ; 
 TYPE_5__* FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC21 (int) ; 
 void* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LogicalRepRelMapEntry *
FUNC23(LogicalRepRelId remoteid, LOCKMODE lockmode)
{
	LogicalRepRelMapEntry *entry;
	bool		found;

	if (LogicalRepRelMap == NULL)
		FUNC19();

	/* Search for existing entry. */
	entry = FUNC17(LogicalRepRelMap, (void *) &remoteid,
						HASH_FIND, &found);

	if (!found)
		FUNC13(ERROR, "no relation map entry for remote relation ID %u",
			 remoteid);

	/* Need to update the local cache? */
	if (!FUNC6(entry->localreloid))
	{
		Oid			relid;
		int			i;
		int			found;
		Bitmapset  *idkey;
		TupleDesc	desc;
		LogicalRepRelation *remoterel;
		MemoryContext oldctx;

		remoterel = &entry->remoterel;

		/* Try to find and lock the relation by name. */
		relid = FUNC7(FUNC20(remoterel->nspname,
											  remoterel->relname, -1),
								 lockmode, true);
		if (!FUNC6(relid))
			FUNC14(ERROR,
					(FUNC15(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC16("logical replication target relation \"%s.%s\" does not exist",
							remoterel->nspname, remoterel->relname)));
		entry->localrel = FUNC22(relid, NoLock);

		/* Check for supported relkind. */
		FUNC2(entry->localrel->rd_rel->relkind,
								 remoterel->nspname, remoterel->relname);

		/*
		 * Build the mapping of local attribute numbers to remote attribute
		 * numbers and validate that we don't miss any replicated columns as
		 * that would result in potentially unwanted data loss.
		 */
		desc = FUNC8(entry->localrel);
		oldctx = FUNC4(LogicalRepRelMapContext);
		entry->attrmap = FUNC21(desc->natts * sizeof(AttrNumber));
		FUNC4(oldctx);

		found = 0;
		for (i = 0; i < desc->natts; i++)
		{
			int			attnum;
			Form_pg_attribute attr = FUNC10(desc, i);

			if (attr->attisdropped || attr->attgenerated)
			{
				entry->attrmap[i] = -1;
				continue;
			}

			attnum = FUNC18(remoterel,
												FUNC5(attr->attname));

			entry->attrmap[i] = attnum;
			if (attnum >= 0)
				found++;
		}

		/* TODO, detail message with names of missing columns */
		if (found < remoterel->natts)
			FUNC14(ERROR,
					(FUNC15(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC16("logical replication target relation \"%s.%s\" is missing "
							"some replicated columns",
							remoterel->nspname, remoterel->relname)));

		/*
		 * Check that replica identity matches. We allow for stricter replica
		 * identity (fewer columns) on subscriber as that will not stop us
		 * from finding unique tuple. IE, if publisher has identity
		 * (id,timestamp) and subscriber just (id) this will not be a problem,
		 * but in the opposite scenario it will.
		 *
		 * Don't throw any error here just mark the relation entry as not
		 * updatable, as replica identity is only for updates and deletes but
		 * inserts can be replicated even without it.
		 */
		entry->updatable = true;
		idkey = FUNC9(entry->localrel,
										   INDEX_ATTR_BITMAP_IDENTITY_KEY);
		/* fallback to PK if no replica identity */
		if (idkey == NULL)
		{
			idkey = FUNC9(entry->localrel,
											   INDEX_ATTR_BITMAP_PRIMARY_KEY);

			/*
			 * If no replica identity index and no PK, the published table
			 * must have replica identity FULL.
			 */
			if (idkey == NULL && remoterel->replident != REPLICA_IDENTITY_FULL)
				entry->updatable = false;
		}

		i = -1;
		while ((i = FUNC12(idkey, i)) >= 0)
		{
			int			attnum = i + FirstLowInvalidHeapAttributeNumber;

			if (!FUNC1(attnum))
				FUNC14(ERROR,
						(FUNC15(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						 FUNC16("logical replication target relation \"%s.%s\" uses "
								"system columns in REPLICA IDENTITY index",
								remoterel->nspname, remoterel->relname)));

			attnum = FUNC0(attnum);

			if (entry->attrmap[attnum] < 0 ||
				!FUNC11(entry->attrmap[attnum], remoterel->attkeys))
			{
				entry->updatable = false;
				break;
			}
		}

		entry->localreloid = relid;
	}
	else
		entry->localrel = FUNC22(entry->localreloid, lockmode);

	if (entry->state != SUBREL_STATE_READY)
		entry->state = FUNC3(MySubscription->oid,
											   entry->localreloid,
											   &entry->statelsn,
											   true);

	return entry;
}