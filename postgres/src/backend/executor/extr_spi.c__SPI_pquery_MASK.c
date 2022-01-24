#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_15__ {int /*<<< orphan*/  processed; } ;
struct TYPE_14__ {int operation; TYPE_3__* dest; TYPE_2__* plannedstmt; TYPE_1__* estate; } ;
struct TYPE_13__ {scalar_t__ mydest; } ;
struct TYPE_12__ {scalar_t__ hasReturning; } ;
struct TYPE_11__ {int /*<<< orphan*/  es_processed; } ;
typedef  TYPE_4__ QueryDesc ;

/* Variables and functions */
#define  CMD_DELETE 131 
#define  CMD_INSERT 130 
#define  CMD_SELECT 129 
#define  CMD_UPDATE 128 
 scalar_t__ DestSPI ; 
 int /*<<< orphan*/  ERROR ; 
 int EXEC_FLAG_SKIP_TRIGGERS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int SPI_ERROR_OPUNKNOWN ; 
 int SPI_OK_DELETE ; 
 int SPI_OK_DELETE_RETURNING ; 
 int SPI_OK_INSERT ; 
 int SPI_OK_INSERT_RETURNING ; 
 int SPI_OK_SELECT ; 
 int SPI_OK_UPDATE ; 
 int SPI_OK_UPDATE_RETURNING ; 
 int SPI_OK_UTILITY ; 
 scalar_t__ ShowExecutorStats ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 TYPE_6__* _SPI_current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(QueryDesc *queryDesc, bool fire_triggers, uint64 tcount)
{
	int			operation = queryDesc->operation;
	int			eflags;
	int			res;

	switch (operation)
	{
		case CMD_SELECT:
			if (queryDesc->dest->mydest != DestSPI)
			{
				/* Don't return SPI_OK_SELECT if we're discarding result */
				res = SPI_OK_UTILITY;
			}
			else
				res = SPI_OK_SELECT;
			break;
		case CMD_INSERT:
			if (queryDesc->plannedstmt->hasReturning)
				res = SPI_OK_INSERT_RETURNING;
			else
				res = SPI_OK_INSERT;
			break;
		case CMD_DELETE:
			if (queryDesc->plannedstmt->hasReturning)
				res = SPI_OK_DELETE_RETURNING;
			else
				res = SPI_OK_DELETE;
			break;
		case CMD_UPDATE:
			if (queryDesc->plannedstmt->hasReturning)
				res = SPI_OK_UPDATE_RETURNING;
			else
				res = SPI_OK_UPDATE;
			break;
		default:
			return SPI_ERROR_OPUNKNOWN;
	}

#ifdef SPI_EXECUTOR_STATS
	if (ShowExecutorStats)
		ResetUsage();
#endif

	/* Select execution options */
	if (fire_triggers)
		eflags = 0;				/* default run-to-completion flags */
	else
		eflags = EXEC_FLAG_SKIP_TRIGGERS;

	FUNC3(queryDesc, eflags);

	FUNC2(queryDesc, ForwardScanDirection, tcount, true);

	_SPI_current->processed = queryDesc->estate->es_processed;

	if ((res == SPI_OK_SELECT || queryDesc->plannedstmt->hasReturning) &&
		queryDesc->dest->mydest == DestSPI)
	{
		if (FUNC6())
			FUNC7(ERROR, "consistency check on SPI tuple count failed");
	}

	FUNC1(queryDesc);
	FUNC0(queryDesc);
	/* FreeQueryDesc is done by the caller */

#ifdef SPI_EXECUTOR_STATS
	if (ShowExecutorStats)
		ShowUsage("SPI EXECUTOR STATS");
#endif

	return res;
}