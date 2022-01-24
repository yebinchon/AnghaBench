#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ginxlogVacuumDataLeafPage ;
struct TYPE_9__ {int flags; } ;
typedef  TYPE_2__ ginxlogSplit ;
typedef  int /*<<< orphan*/  ginxlogRecompressDataLeaf ;
struct TYPE_10__ {int /*<<< orphan*/  isDelete; } ;
typedef  TYPE_3__ ginxlogInsertEntry ;
struct TYPE_14__ {int /*<<< orphan*/  key; } ;
struct TYPE_11__ {TYPE_7__ newitem; } ;
typedef  TYPE_4__ ginxlogInsertDataInternal ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_5__ ginxlogInsert ;
struct TYPE_13__ {char ndeleted; } ;
typedef  TYPE_6__ ginxlogDeleteListPages ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BlockIdData ;
typedef  int /*<<< orphan*/  BlockId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GIN_INSERT_ISDATA ; 
 int GIN_INSERT_ISLEAF ; 
 int GIN_SPLIT_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
#define  XLOG_GIN_CREATE_PTREE 136 
#define  XLOG_GIN_DELETE_LISTPAGE 135 
#define  XLOG_GIN_DELETE_PAGE 134 
#define  XLOG_GIN_INSERT 133 
#define  XLOG_GIN_INSERT_LISTPAGE 132 
#define  XLOG_GIN_SPLIT 131 
#define  XLOG_GIN_UPDATE_META_PAGE 130 
#define  XLOG_GIN_VACUUM_DATA_LEAF_PAGE 129 
#define  XLOG_GIN_VACUUM_PAGE 128 
 int XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC12(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC6(record);
	uint8		info = FUNC7(record) & ~XLR_INFO_MASK;

	switch (info)
	{
		case XLOG_GIN_CREATE_PTREE:
			/* no further information */
			break;
		case XLOG_GIN_INSERT:
			{
				ginxlogInsert *xlrec = (ginxlogInsert *) rec;

				FUNC9(buf, "isdata: %c isleaf: %c",
								 (xlrec->flags & GIN_INSERT_ISDATA) ? 'T' : 'F',
								 (xlrec->flags & GIN_INSERT_ISLEAF) ? 'T' : 'F');
				if (!(xlrec->flags & GIN_INSERT_ISLEAF))
				{
					char	   *payload = rec + sizeof(ginxlogInsert);
					BlockNumber leftChildBlkno;
					BlockNumber rightChildBlkno;

					leftChildBlkno = FUNC0((BlockId) payload);
					payload += sizeof(BlockIdData);
					rightChildBlkno = FUNC0((BlockId) payload);
					payload += sizeof(BlockNumber);
					FUNC9(buf, " children: %u/%u",
									 leftChildBlkno, rightChildBlkno);
				}
				if (FUNC8(record, 0))
				{
					if (FUNC4(record, 0))
						FUNC10(buf, " (full page image)");
					else
						FUNC10(buf, " (full page image, for WAL verification)");
				}
				else
				{
					char	   *payload = FUNC5(record, 0, NULL);

					if (!(xlrec->flags & GIN_INSERT_ISDATA))
						FUNC9(buf, " isdelete: %c",
										 (((ginxlogInsertEntry *) payload)->isDelete) ? 'T' : 'F');
					else if (xlrec->flags & GIN_INSERT_ISLEAF)
						FUNC11(buf, (ginxlogRecompressDataLeaf *) payload);
					else
					{
						ginxlogInsertDataInternal *insertData =
						(ginxlogInsertDataInternal *) payload;

						FUNC9(buf, " pitem: %u-%u/%u",
										 FUNC3(&insertData->newitem),
										 FUNC1(&insertData->newitem.key),
										 FUNC2(&insertData->newitem.key));
					}
				}
			}
			break;
		case XLOG_GIN_SPLIT:
			{
				ginxlogSplit *xlrec = (ginxlogSplit *) rec;

				FUNC9(buf, "isrootsplit: %c",
								 (((ginxlogSplit *) rec)->flags & GIN_SPLIT_ROOT) ? 'T' : 'F');
				FUNC9(buf, " isdata: %c isleaf: %c",
								 (xlrec->flags & GIN_INSERT_ISDATA) ? 'T' : 'F',
								 (xlrec->flags & GIN_INSERT_ISLEAF) ? 'T' : 'F');
			}
			break;
		case XLOG_GIN_VACUUM_PAGE:
			/* no further information */
			break;
		case XLOG_GIN_VACUUM_DATA_LEAF_PAGE:
			{
				if (FUNC8(record, 0))
				{
					if (FUNC4(record, 0))
						FUNC10(buf, " (full page image)");
					else
						FUNC10(buf, " (full page image, for WAL verification)");
				}
				else
				{
					ginxlogVacuumDataLeafPage *xlrec =
					(ginxlogVacuumDataLeafPage *) FUNC5(record, 0, NULL);

					FUNC11(buf, &xlrec->data);
				}
			}
			break;
		case XLOG_GIN_DELETE_PAGE:
			/* no further information */
			break;
		case XLOG_GIN_UPDATE_META_PAGE:
			/* no further information */
			break;
		case XLOG_GIN_INSERT_LISTPAGE:
			/* no further information */
			break;
		case XLOG_GIN_DELETE_LISTPAGE:
			FUNC9(buf, "ndeleted: %d",
							 ((ginxlogDeleteListPages *) rec)->ndeleted);
			break;
	}
}