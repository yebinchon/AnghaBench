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
struct TYPE_6__ {scalar_t__ curCmd; } ;
struct TYPE_7__ {struct TYPE_7__* savedPassword; struct TYPE_7__* currTableAm; struct TYPE_7__* currTablespace; struct TYPE_7__* currSchema; struct TYPE_7__* currUser; TYPE_1__ sqlparse; int /*<<< orphan*/  (* DeClonePtr ) (TYPE_2__*) ;int /*<<< orphan*/ * connection; } ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(ArchiveHandle *AH)
{
	/* Should not have an open database connection */
	FUNC0(AH->connection == NULL);

	/* Clear format-specific state */
	AH->DeClonePtr(AH);

	/* Clear state allocated by CloneArchive */
	if (AH->sqlparse.curCmd)
		FUNC1(AH->sqlparse.curCmd);

	/* Clear any connection-local state */
	if (AH->currUser)
		FUNC2(AH->currUser);
	if (AH->currSchema)
		FUNC2(AH->currSchema);
	if (AH->currTablespace)
		FUNC2(AH->currTablespace);
	if (AH->currTableAm)
		FUNC2(AH->currTableAm);
	if (AH->savedPassword)
		FUNC2(AH->savedPassword);

	FUNC2(AH);
}