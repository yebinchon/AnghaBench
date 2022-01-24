#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* dependencies; int nDeps; int hadDumper; scalar_t__ dataLength; int /*<<< orphan*/ * formatData; int /*<<< orphan*/  dataDumperArg; scalar_t__ dataDumper; int /*<<< orphan*/ * copyStmt; int /*<<< orphan*/ * dropStmt; int /*<<< orphan*/ * defn; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * owner; int /*<<< orphan*/ * tableam; int /*<<< orphan*/ * tablespace; int /*<<< orphan*/ * namespace; int /*<<< orphan*/ * tag; int /*<<< orphan*/  section; scalar_t__ dumpId; int /*<<< orphan*/  catalogId; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef  TYPE_1__ TocEntry ;
struct TYPE_10__ {scalar_t__ maxDumpId; int /*<<< orphan*/  (* ArchiveEntryPtr ) (TYPE_3__*,TYPE_1__*) ;TYPE_1__* toc; int /*<<< orphan*/  tocCount; } ;
struct TYPE_9__ {int nDeps; scalar_t__ dumpFn; int /*<<< orphan*/  dumpArg; int /*<<< orphan*/  deps; scalar_t__ copyStmt; scalar_t__ dropStmt; scalar_t__ createStmt; scalar_t__ description; scalar_t__ owner; scalar_t__ tableam; scalar_t__ tablespace; scalar_t__ namespace; scalar_t__ tag; int /*<<< orphan*/  section; } ;
typedef  scalar_t__ DumpId ;
typedef  int /*<<< orphan*/  CatalogId ;
typedef  TYPE_2__ ArchiveOpts ;
typedef  TYPE_3__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*) ; 

TocEntry *
FUNC5(Archive *AHX, CatalogId catalogId, DumpId dumpId,
			 ArchiveOpts *opts)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;
	TocEntry   *newToc;

	newToc = (TocEntry *) FUNC2(sizeof(TocEntry));

	AH->tocCount++;
	if (dumpId > AH->maxDumpId)
		AH->maxDumpId = dumpId;

	newToc->prev = AH->toc->prev;
	newToc->next = AH->toc;
	AH->toc->prev->next = newToc;
	AH->toc->prev = newToc;

	newToc->catalogId = catalogId;
	newToc->dumpId = dumpId;
	newToc->section = opts->section;

	newToc->tag = FUNC3(opts->tag);
	newToc->namespace = opts->namespace ? FUNC3(opts->namespace) : NULL;
	newToc->tablespace = opts->tablespace ? FUNC3(opts->tablespace) : NULL;
	newToc->tableam = opts->tableam ? FUNC3(opts->tableam) : NULL;
	newToc->owner = opts->owner ? FUNC3(opts->owner) : NULL;
	newToc->desc = FUNC3(opts->description);
	newToc->defn = opts->createStmt ? FUNC3(opts->createStmt) : NULL;
	newToc->dropStmt = opts->dropStmt ? FUNC3(opts->dropStmt) : NULL;
	newToc->copyStmt = opts->copyStmt ? FUNC3(opts->copyStmt) : NULL;

	if (opts->nDeps > 0)
	{
		newToc->dependencies = (DumpId *) FUNC1(opts->nDeps * sizeof(DumpId));
		FUNC0(newToc->dependencies, opts->deps, opts->nDeps * sizeof(DumpId));
		newToc->nDeps = opts->nDeps;
	}
	else
	{
		newToc->dependencies = NULL;
		newToc->nDeps = 0;
	}

	newToc->dataDumper = opts->dumpFn;
	newToc->dataDumperArg = opts->dumpArg;
	newToc->hadDumper = opts->dumpFn ? true : false;

	newToc->formatData = NULL;
	newToc->dataLength = 0;

	if (AH->ArchiveEntryPtr != NULL)
		AH->ArchiveEntryPtr(AH, newToc);

	return newToc;
}