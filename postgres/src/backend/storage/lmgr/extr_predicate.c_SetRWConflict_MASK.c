#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  availableList; } ;
struct TYPE_9__ {int /*<<< orphan*/  inLink; int /*<<< orphan*/  outLink; TYPE_1__* sxactIn; TYPE_1__* sxactOut; } ;
struct TYPE_8__ {int /*<<< orphan*/  inConflicts; int /*<<< orphan*/  outConflicts; } ;
typedef  TYPE_1__ SERIALIZABLEXACT ;
typedef  TYPE_2__* RWConflict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  RWConflictData ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_5__* RWConflictPool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outLink ; 

__attribute__((used)) static void
FUNC10(SERIALIZABLEXACT *reader, SERIALIZABLEXACT *writer)
{
	RWConflict	conflict;

	FUNC0(reader != writer);
	FUNC0(!FUNC1(reader, writer));

	conflict = (RWConflict)
		FUNC4(&RWConflictPool->availableList,
					 &RWConflictPool->availableList,
					 FUNC9(RWConflictData, outLink));
	if (!conflict)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_OUT_OF_MEMORY),
				 FUNC8("not enough elements in RWConflictPool to record a read/write conflict"),
				 FUNC7("You might need to run fewer transactions at a time or increase max_connections.")));

	FUNC2(&conflict->outLink);

	conflict->sxactOut = reader;
	conflict->sxactIn = writer;
	FUNC3(&reader->outConflicts, &conflict->outLink);
	FUNC3(&writer->inConflicts, &conflict->inLink);
}