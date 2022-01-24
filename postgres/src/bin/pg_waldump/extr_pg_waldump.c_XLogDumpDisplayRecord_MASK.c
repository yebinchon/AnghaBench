#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint32 ;
typedef  int XLogRecPtr ;
struct TYPE_25__ {int ReadRecPtr; int max_block_id; TYPE_1__* blocks; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_26__ {int /*<<< orphan*/  bkp_details; } ;
typedef  TYPE_3__ XLogDumpConfig ;
struct TYPE_29__ {int spcNode; int dbNode; int relNode; } ;
struct TYPE_28__ {char* rm_name; char* (* rm_identify ) (int) ;int /*<<< orphan*/  (* rm_desc ) (TYPE_4__*,TYPE_2__*) ;} ;
struct TYPE_27__ {char* data; } ;
struct TYPE_24__ {int bimg_info; int hole_offset; int hole_length; int bimg_len; } ;
typedef  TYPE_4__ StringInfoData ;
typedef  TYPE_5__ RmgrDescData ;
typedef  TYPE_6__ RelFileNode ;
typedef  size_t ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int BKPIMAGE_IS_COMPRESSED ; 
 int BLCKSZ ; 
 size_t MAIN_FORKNUM ; 
 TYPE_5__* RmgrDescTable ; 
 int XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int*,int*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,TYPE_6__*,size_t*,int*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 size_t FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 char** forkNames ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 char* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC16(XLogDumpConfig *config, XLogReaderState *record)
{
	const char *id;
	const RmgrDescData *desc = &RmgrDescTable[FUNC5(record)];
	uint32		rec_len;
	uint32		fpi_len;
	RelFileNode rnode;
	ForkNumber	forknum;
	BlockNumber blk;
	int			block_id;
	uint8		info = FUNC3(record);
	XLogRecPtr	xl_prev = FUNC4(record);
	StringInfoData s;

	FUNC0(record, &rec_len, &fpi_len);

	FUNC12("rmgr: %-11s len (rec/tot): %6u/%6u, tx: %10u, lsn: %X/%08X, prev %X/%08X, ",
		   desc->rm_name,
		   rec_len, FUNC6(record),
		   FUNC7(record),
		   (uint32) (record->ReadRecPtr >> 32), (uint32) record->ReadRecPtr,
		   (uint32) (xl_prev >> 32), (uint32) xl_prev);

	id = desc->rm_identify(info);
	if (id == NULL)
		FUNC12("desc: UNKNOWN (%x) ", info & ~XLR_INFO_MASK);
	else
		FUNC12("desc: %s ", id);

	FUNC10(&s);
	desc->rm_desc(&s, record);
	FUNC12("%s", s.data);
	FUNC11(s.data);

	if (!config->bkp_details)
	{
		/* print block references (short format) */
		for (block_id = 0; block_id <= record->max_block_id; block_id++)
		{
			if (!FUNC9(record, block_id))
				continue;

			FUNC2(record, block_id, &rnode, &forknum, &blk);
			if (forknum != MAIN_FORKNUM)
				FUNC12(", blkref #%u: rel %u/%u/%u fork %s blk %u",
					   block_id,
					   rnode.spcNode, rnode.dbNode, rnode.relNode,
					   forkNames[forknum],
					   blk);
			else
				FUNC12(", blkref #%u: rel %u/%u/%u blk %u",
					   block_id,
					   rnode.spcNode, rnode.dbNode, rnode.relNode,
					   blk);
			if (FUNC8(record, block_id))
			{
				if (FUNC1(record, block_id))
					FUNC12(" FPW");
				else
					FUNC12(" FPW for WAL verification");
			}
		}
		FUNC13('\n');
	}
	else
	{
		/* print block references (detailed format) */
		FUNC13('\n');
		for (block_id = 0; block_id <= record->max_block_id; block_id++)
		{
			if (!FUNC9(record, block_id))
				continue;

			FUNC2(record, block_id, &rnode, &forknum, &blk);
			FUNC12("\tblkref #%u: rel %u/%u/%u fork %s blk %u",
				   block_id,
				   rnode.spcNode, rnode.dbNode, rnode.relNode,
				   forkNames[forknum],
				   blk);
			if (FUNC8(record, block_id))
			{
				if (record->blocks[block_id].bimg_info &
					BKPIMAGE_IS_COMPRESSED)
				{
					FUNC12(" (FPW%s); hole: offset: %u, length: %u, "
						   "compression saved: %u",
						   FUNC1(record, block_id) ?
						   "" : " for WAL verification",
						   record->blocks[block_id].hole_offset,
						   record->blocks[block_id].hole_length,
						   BLCKSZ -
						   record->blocks[block_id].hole_length -
						   record->blocks[block_id].bimg_len);
				}
				else
				{
					FUNC12(" (FPW%s); hole: offset: %u, length: %u",
						   FUNC1(record, block_id) ?
						   "" : " for WAL verification",
						   record->blocks[block_id].hole_offset,
						   record->blocks[block_id].hole_length);
				}
			}
			FUNC13('\n');
		}
	}
}