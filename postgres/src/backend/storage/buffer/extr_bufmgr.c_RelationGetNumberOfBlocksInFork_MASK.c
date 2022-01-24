#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_7__ {int /*<<< orphan*/  rd_smgr; TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLCKSZ ; 
#define  RELKIND_COMPOSITE_TYPE 137 
#define  RELKIND_FOREIGN_TABLE 136 
#define  RELKIND_INDEX 135 
#define  RELKIND_MATVIEW 134 
#define  RELKIND_PARTITIONED_INDEX 133 
#define  RELKIND_PARTITIONED_TABLE 132 
#define  RELKIND_RELATION 131 
#define  RELKIND_SEQUENCE 130 
#define  RELKIND_TOASTVALUE 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

BlockNumber
FUNC4(Relation relation, ForkNumber forkNum)
{
	switch (relation->rd_rel->relkind)
	{
		case RELKIND_SEQUENCE:
		case RELKIND_INDEX:
		case RELKIND_PARTITIONED_INDEX:
			/* Open it at the smgr level if not already done */
			FUNC1(relation);

			return FUNC2(relation->rd_smgr, forkNum);

		case RELKIND_RELATION:
		case RELKIND_TOASTVALUE:
		case RELKIND_MATVIEW:
			{
				/*
				 * Not every table AM uses BLCKSZ wide fixed size blocks.
				 * Therefore tableam returns the size in bytes - but for the
				 * purpose of this routine, we want the number of blocks.
				 * Therefore divide, rounding up.
				 */
				uint64		szbytes;

				szbytes = FUNC3(relation, forkNum);

				return (szbytes + (BLCKSZ - 1)) / BLCKSZ;
			}
		case RELKIND_VIEW:
		case RELKIND_COMPOSITE_TYPE:
		case RELKIND_FOREIGN_TABLE:
		case RELKIND_PARTITIONED_TABLE:
		default:
			FUNC0(false);
			break;
	}

	return 0;					/* keep compiler quiet */
}