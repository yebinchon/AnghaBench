#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_11__ {double total; int /*<<< orphan*/  bufusage; } ;
struct TYPE_10__ {TYPE_7__* totaltime; TYPE_1__* estate; TYPE_2__* plannedstmt; int /*<<< orphan*/  sourceText; } ;
struct TYPE_9__ {scalar_t__ queryId; int /*<<< orphan*/  stmt_len; int /*<<< orphan*/  stmt_location; } ;
struct TYPE_8__ {int /*<<< orphan*/  es_processed; } ;
typedef  TYPE_3__ QueryDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC6(QueryDesc *queryDesc)
{
	uint64		queryId = queryDesc->plannedstmt->queryId;

	if (queryId != FUNC1(0) && queryDesc->totaltime && FUNC2())
	{
		/*
		 * Make sure stats accumulation is done.  (Note: it's okay if several
		 * levels of hook all do this.)
		 */
		FUNC0(queryDesc->totaltime);

		FUNC3(queryDesc->sourceText,
				   queryId,
				   queryDesc->plannedstmt->stmt_location,
				   queryDesc->plannedstmt->stmt_len,
				   queryDesc->totaltime->total * 1000.0,	/* convert to msec */
				   queryDesc->estate->es_processed,
				   &queryDesc->totaltime->bufusage,
				   NULL);
	}

	if (&prev_ExecutorEnd)
		FUNC4(queryDesc);
	else
		FUNC5(queryDesc);
}