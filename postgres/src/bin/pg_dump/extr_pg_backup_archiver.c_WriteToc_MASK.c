#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int tableoid; int oid; } ;
struct TYPE_10__ {int reqs; int dumpId; char* tag; char* desc; int section; char* defn; char* dropStmt; char* copyStmt; char* namespace; char* tablespace; char* tableam; char* owner; int nDeps; int* dependencies; TYPE_1__ catalogId; scalar_t__ dataDumper; struct TYPE_10__* next; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_11__ {int /*<<< orphan*/  (* WriteExtraTocPtr ) (TYPE_3__*,TYPE_2__*) ;TYPE_2__* toc; } ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int REQ_DATA ; 
 int REQ_SCHEMA ; 
 int REQ_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 

void
FUNC4(ArchiveHandle *AH)
{
	TocEntry   *te;
	char		workbuf[32];
	int			tocCount;
	int			i;

	/* count entries that will actually be dumped */
	tocCount = 0;
	for (te = AH->toc->next; te != AH->toc; te = te->next)
	{
		if ((te->reqs & (REQ_SCHEMA | REQ_DATA | REQ_SPECIAL)) != 0)
			tocCount++;
	}

	/* printf("%d TOC Entries to save\n", tocCount); */

	FUNC0(AH, tocCount);

	for (te = AH->toc->next; te != AH->toc; te = te->next)
	{
		if ((te->reqs & (REQ_SCHEMA | REQ_DATA | REQ_SPECIAL)) == 0)
			continue;

		FUNC0(AH, te->dumpId);
		FUNC0(AH, te->dataDumper ? 1 : 0);

		/* OID is recorded as a string for historical reasons */
		FUNC2(workbuf, "%u", te->catalogId.tableoid);
		FUNC1(AH, workbuf);
		FUNC2(workbuf, "%u", te->catalogId.oid);
		FUNC1(AH, workbuf);

		FUNC1(AH, te->tag);
		FUNC1(AH, te->desc);
		FUNC0(AH, te->section);
		FUNC1(AH, te->defn);
		FUNC1(AH, te->dropStmt);
		FUNC1(AH, te->copyStmt);
		FUNC1(AH, te->namespace);
		FUNC1(AH, te->tablespace);
		FUNC1(AH, te->tableam);
		FUNC1(AH, te->owner);
		FUNC1(AH, "false");

		/* Dump list of dependencies */
		for (i = 0; i < te->nDeps; i++)
		{
			FUNC2(workbuf, "%d", te->dependencies[i]);
			FUNC1(AH, workbuf);
		}
		FUNC1(AH, NULL);		/* Terminate List */

		if (AH->WriteExtraTocPtr)
			AH->WriteExtraTocPtr(AH, te);
	}
}