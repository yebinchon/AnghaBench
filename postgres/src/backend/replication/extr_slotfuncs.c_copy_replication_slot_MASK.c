#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogSegNo ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  void* TransactionId ;
struct TYPE_8__ {scalar_t__ confirmed_flush; scalar_t__ restart_lsn; void* catalog_xmin; void* xmin; } ;
struct TYPE_11__ {TYPE_2__ data; int /*<<< orphan*/  mutex; void* effective_catalog_xmin; void* effective_xmin; } ;
struct TYPE_10__ {TYPE_3__* replication_slots; } ;
struct TYPE_7__ {scalar_t__ restart_lsn; scalar_t__ persistency; int /*<<< orphan*/  name; void* catalog_xmin; void* xmin; int /*<<< orphan*/  plugin; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; TYPE_1__ data; void* effective_catalog_xmin; void* effective_xmin; scalar_t__ in_use; } ;
typedef  TYPE_3__ ReplicationSlot ;
typedef  int /*<<< orphan*/ * Name ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_6__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ RS_TEMPORARY ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_5__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 () ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,...) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int max_replication_slots ; 
 char* FUNC35 (char*) ; 
 scalar_t__ FUNC36 (char*,char*) ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static Datum
FUNC37(FunctionCallInfo fcinfo, bool logical_slot)
{
	Name		src_name = FUNC10(0);
	Name		dst_name = FUNC10(1);
	ReplicationSlot *src = NULL;
	XLogRecPtr	src_restart_lsn;
	bool		src_islogical;
	bool		temporary;
	char	   *plugin;
	Datum		values[2];
	bool		nulls[2];
	Datum		result;
	TupleDesc	tupdesc;
	HeapTuple	tuple;

	if (FUNC33(fcinfo, NULL, &tupdesc) != TYPEFUNC_COMPOSITE)
		FUNC28(ERROR, "return type must be a row type");

	FUNC25();

	if (logical_slot)
		FUNC1();
	else
		FUNC2();

	FUNC5(ReplicationSlotControlLock, LW_SHARED);

	/*
	 * We need to prevent the source slot's reserved WAL from being removed,
	 * but we don't want to lock that slot for very long, and it can advance
	 * in the meantime.  So obtain the source slot's data, and create a new
	 * slot using its restart_lsn.  Afterwards we lock the source slot again
	 * and verify that the data we copied (name, type) has not changed
	 * incompatibly.  No inconvenient WAL removal can occur once the new slot
	 * is created -- but since WAL removal could have occurred before we
	 * managed to create the new slot, we advance the new slot's restart_lsn
	 * to the source slot's updated restart_lsn the second time we lock it.
	 */
	for (int i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

		if (s->in_use && FUNC36(FUNC8(s->data.name), FUNC8(*src_name)) == 0)
		{
			FUNC20(&s->mutex);
			src_islogical = FUNC19(s);
			src_restart_lsn = s->data.restart_lsn;
			temporary = s->data.persistency == RS_TEMPORARY;
			plugin = logical_slot ? FUNC35(FUNC8(s->data.plugin)) : NULL;
			FUNC21(&s->mutex);

			src = s;
			break;
		}
	}

	FUNC6(ReplicationSlotControlLock);

	if (src == NULL)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_UNDEFINED_OBJECT),
				 FUNC32("replication slot \"%s\" does not exist", FUNC8(*src_name))));

	/* Check type of replication slot */
	if (src_islogical != logical_slot)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_FEATURE_NOT_SUPPORTED),
				 src_islogical ?
				 FUNC32("cannot copy physical replication slot \"%s\" as a logical replication slot",
						FUNC8(*src_name)) :
				 FUNC32("cannot copy logical replication slot \"%s\" as a physical replication slot",
						FUNC8(*src_name))));

	/* Copying non-reserved slot doesn't make sense */
	if (FUNC24(src_restart_lsn))
	{
		FUNC0(!logical_slot);
		FUNC29(ERROR,
				(FUNC30(ERRCODE_FEATURE_NOT_SUPPORTED),
				 (FUNC32("cannot copy a replication slot that doesn't reserve WAL"))));
	}

	/* Overwrite params from optional arguments */
	if (FUNC11() >= 3)
		temporary = FUNC9(2);
	if (FUNC11() >= 4)
	{
		FUNC0(logical_slot);
		plugin = FUNC8(*(FUNC10(3)));
	}

	/* Create new slot and acquire it */
	if (logical_slot)
		FUNC26(FUNC8(*dst_name),
										plugin,
										temporary,
										src_restart_lsn);
	else
		FUNC27(FUNC8(*dst_name),
										 true,
										 temporary,
										 src_restart_lsn);

	/*
	 * Update the destination slot to current values of the source slot;
	 * recheck that the source slot is still the one we saw previously.
	 */
	{
		TransactionId copy_effective_xmin;
		TransactionId copy_effective_catalog_xmin;
		TransactionId copy_xmin;
		TransactionId copy_catalog_xmin;
		XLogRecPtr	copy_restart_lsn;
		bool		copy_islogical;
		char	   *copy_name;

		/* Copy data of source slot again */
		FUNC20(&src->mutex);
		copy_effective_xmin = src->effective_xmin;
		copy_effective_catalog_xmin = src->effective_catalog_xmin;

		copy_xmin = src->data.xmin;
		copy_catalog_xmin = src->data.catalog_xmin;
		copy_restart_lsn = src->data.restart_lsn;

		/* for existence check */
		copy_name = FUNC35(FUNC8(src->data.name));
		copy_islogical = FUNC19(src);
		FUNC21(&src->mutex);

		/*
		 * Check if the source slot still exists and is valid. We regard it as
		 * invalid if the type of replication slot or name has been changed,
		 * or the restart_lsn either is invalid or has gone backward. (The
		 * restart_lsn could go backwards if the source slot is dropped and
		 * copied from an older slot during installation.)
		 *
		 * Since erroring out will release and drop the destination slot we
		 * don't need to release it here.
		 */
		if (copy_restart_lsn < src_restart_lsn ||
			src_islogical != copy_islogical ||
			FUNC36(copy_name, FUNC8(*src_name)) != 0)
			FUNC29(ERROR,
					(FUNC32("could not copy replication slot \"%s\"",
							FUNC8(*src_name)),
					 FUNC31("The source replication slot was modified incompatibly during the copy operation.")));

		/* Install copied values again */
		FUNC20(&MyReplicationSlot->mutex);
		MyReplicationSlot->effective_xmin = copy_effective_xmin;
		MyReplicationSlot->effective_catalog_xmin = copy_effective_catalog_xmin;

		MyReplicationSlot->data.xmin = copy_xmin;
		MyReplicationSlot->data.catalog_xmin = copy_catalog_xmin;
		MyReplicationSlot->data.restart_lsn = copy_restart_lsn;
		FUNC21(&MyReplicationSlot->mutex);

		FUNC13();
		FUNC18(false);
		FUNC17();
		FUNC16();

#ifdef USE_ASSERT_CHECKING
		/* Check that the restart_lsn is available */
		{
			XLogSegNo	segno;

			XLByteToSeg(copy_restart_lsn, segno, wal_segment_size);
			Assert(XLogGetLastRemovedSegno() < segno);
		}
#endif
	}

	/* target slot fully created, mark as persistent if needed */
	if (logical_slot && !temporary)
		FUNC14();

	/* All done.  Set up the return values */
	values[0] = FUNC7(dst_name);
	nulls[0] = false;
	if (!FUNC24(MyReplicationSlot->data.confirmed_flush))
	{
		values[1] = FUNC4(MyReplicationSlot->data.confirmed_flush);
		nulls[1] = false;
	}
	else
		nulls[1] = true;

	tuple = FUNC34(tupdesc, values, nulls);
	result = FUNC3(tuple);

	FUNC15();

	FUNC12(result);
}