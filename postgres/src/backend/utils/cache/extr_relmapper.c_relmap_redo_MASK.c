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
struct TYPE_2__ {int nbytes; scalar_t__ dbid; int /*<<< orphan*/  tsid; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ xl_relmap_update ;
typedef  int uint8 ;
typedef  int /*<<< orphan*/  newmap ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  RelMapFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  PANIC ; 
 int XLOG_RELMAP_UPDATE ; 
 int XLR_INFO_MASK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int,int,int,scalar_t__,int /*<<< orphan*/ ,char*) ; 

void
FUNC9(XLogReaderState *record)
{
	uint8		info = FUNC3(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in relmap records */
	FUNC0(!FUNC4(record));

	if (info == XLOG_RELMAP_UPDATE)
	{
		xl_relmap_update *xlrec = (xl_relmap_update *) FUNC2(record);
		RelMapFile	newmap;
		char	   *dbpath;

		if (xlrec->nbytes != sizeof(RelMapFile))
			FUNC5(PANIC, "relmap_redo: wrong size %u in relmap update record",
				 xlrec->nbytes);
		FUNC6(&newmap, xlrec->data, sizeof(newmap));

		/* We need to construct the pathname for this database */
		dbpath = FUNC1(xlrec->dbid, xlrec->tsid);

		/*
		 * Write out the new map and send sinval, but of course don't write a
		 * new WAL entry.  There's no surrounding transaction to tell to
		 * preserve files, either.
		 *
		 * There shouldn't be anyone else updating relmaps during WAL replay,
		 * so we don't bother to take the RelationMappingLock.  We would need
		 * to do so if load_relmap_file needed to interlock against writers.
		 */
		FUNC8((xlrec->dbid == InvalidOid), &newmap,
						  false, true, false,
						  xlrec->dbid, xlrec->tsid, dbpath);

		FUNC7(dbpath);
	}
	else
		FUNC5(PANIC, "relmap_redo: unknown op code %u", info);
}