#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char tableoid; char oid; } ;
struct TYPE_16__ {scalar_t__ dumpId; void* desc; char* dependencies; int nDeps; struct TYPE_16__* next; struct TYPE_16__* prev; void* tag; scalar_t__ dataLength; void* owner; void* tableam; void* tablespace; void* namespace; void* copyStmt; void* dropStmt; void* defn; void* section; TYPE_1__ catalogId; void* hadDumper; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_17__ {int tocCount; scalar_t__ maxDumpId; scalar_t__ version; TYPE_2__* toc; int /*<<< orphan*/  (* ReadExtraTocPtr ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef  char DumpId ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 char InvalidOid ; 
 scalar_t__ K_VERS_1_10 ; 
 scalar_t__ K_VERS_1_11 ; 
 scalar_t__ K_VERS_1_14 ; 
 scalar_t__ K_VERS_1_3 ; 
 scalar_t__ K_VERS_1_5 ; 
 scalar_t__ K_VERS_1_6 ; 
 scalar_t__ K_VERS_1_8 ; 
 scalar_t__ K_VERS_1_9 ; 
 void* FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 void* SECTION_DATA ; 
 void* SECTION_NONE ; 
 void* SECTION_POST_DATA ; 
 void* SECTION_PRE_DATA ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 scalar_t__ FUNC13 (void*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_2__*) ; 

void
FUNC15(ArchiveHandle *AH)
{
	int			i;
	char	   *tmp;
	DumpId	   *deps;
	int			depIdx;
	int			depSize;
	TocEntry   *te;

	AH->tocCount = FUNC0(AH);
	AH->maxDumpId = 0;

	for (i = 0; i < AH->tocCount; i++)
	{
		te = (TocEntry *) FUNC7(sizeof(TocEntry));
		te->dumpId = FUNC0(AH);

		if (te->dumpId > AH->maxDumpId)
			AH->maxDumpId = te->dumpId;

		/* Sanity check */
		if (te->dumpId <= 0)
			FUNC2("entry ID %d out of range -- perhaps a corrupt TOC",
				  te->dumpId);

		te->hadDumper = FUNC0(AH);

		if (AH->version >= K_VERS_1_8)
		{
			tmp = FUNC1(AH);
			FUNC12(tmp, "%u", &te->catalogId.tableoid);
			FUNC3(tmp);
		}
		else
			te->catalogId.tableoid = InvalidOid;
		tmp = FUNC1(AH);
		FUNC12(tmp, "%u", &te->catalogId.oid);
		FUNC3(tmp);

		te->tag = FUNC1(AH);
		te->desc = FUNC1(AH);

		if (AH->version >= K_VERS_1_11)
		{
			te->section = FUNC0(AH);
		}
		else
		{
			/*
			 * Rules for pre-8.4 archives wherein pg_dump hasn't classified
			 * the entries into sections.  This list need not cover entry
			 * types added later than 8.4.
			 */
			if (FUNC13(te->desc, "COMMENT") == 0 ||
				FUNC13(te->desc, "ACL") == 0 ||
				FUNC13(te->desc, "ACL LANGUAGE") == 0)
				te->section = SECTION_NONE;
			else if (FUNC13(te->desc, "TABLE DATA") == 0 ||
					 FUNC13(te->desc, "BLOBS") == 0 ||
					 FUNC13(te->desc, "BLOB COMMENTS") == 0)
				te->section = SECTION_DATA;
			else if (FUNC13(te->desc, "CONSTRAINT") == 0 ||
					 FUNC13(te->desc, "CHECK CONSTRAINT") == 0 ||
					 FUNC13(te->desc, "FK CONSTRAINT") == 0 ||
					 FUNC13(te->desc, "INDEX") == 0 ||
					 FUNC13(te->desc, "RULE") == 0 ||
					 FUNC13(te->desc, "TRIGGER") == 0)
				te->section = SECTION_POST_DATA;
			else
				te->section = SECTION_PRE_DATA;
		}

		te->defn = FUNC1(AH);
		te->dropStmt = FUNC1(AH);

		if (AH->version >= K_VERS_1_3)
			te->copyStmt = FUNC1(AH);

		if (AH->version >= K_VERS_1_6)
			te->namespace = FUNC1(AH);

		if (AH->version >= K_VERS_1_10)
			te->tablespace = FUNC1(AH);

		if (AH->version >= K_VERS_1_14)
			te->tableam = FUNC1(AH);

		te->owner = FUNC1(AH);
		if (AH->version < K_VERS_1_9 || FUNC13(FUNC1(AH), "true") == 0)
			FUNC5("restoring tables WITH OIDS is not supported anymore");

		/* Read TOC entry dependencies */
		if (AH->version >= K_VERS_1_5)
		{
			depSize = 100;
			deps = (DumpId *) FUNC6(sizeof(DumpId) * depSize);
			depIdx = 0;
			for (;;)
			{
				tmp = FUNC1(AH);
				if (!tmp)
					break;		/* end of list */
				if (depIdx >= depSize)
				{
					depSize *= 2;
					deps = (DumpId *) FUNC8(deps, sizeof(DumpId) * depSize);
				}
				FUNC12(tmp, "%d", &deps[depIdx]);
				FUNC3(tmp);
				depIdx++;
			}

			if (depIdx > 0)		/* We have a non-null entry */
			{
				deps = (DumpId *) FUNC8(deps, sizeof(DumpId) * depIdx);
				te->dependencies = deps;
				te->nDeps = depIdx;
			}
			else
			{
				FUNC3(deps);
				te->dependencies = NULL;
				te->nDeps = 0;
			}
		}
		else
		{
			te->dependencies = NULL;
			te->nDeps = 0;
		}
		te->dataLength = 0;

		if (AH->ReadExtraTocPtr)
			AH->ReadExtraTocPtr(AH, te);

		FUNC4("read TOC entry %d (ID %d) for %s %s",
					 i, te->dumpId, te->desc, te->tag);

		/* link completed entry into TOC circular list */
		te->prev = AH->toc->prev;
		AH->toc->prev->next = te;
		AH->toc->prev = te;
		te->next = AH->toc;

		/* special processing immediately upon read for some items */
		if (FUNC13(te->desc, "ENCODING") == 0)
			FUNC9(AH, te);
		else if (FUNC13(te->desc, "STDSTRINGS") == 0)
			FUNC11(AH, te);
		else if (FUNC13(te->desc, "SEARCHPATH") == 0)
			FUNC10(AH, te);
	}
}