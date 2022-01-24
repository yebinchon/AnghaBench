#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ teSection ;
typedef  int /*<<< orphan*/  stamp_str ;
struct TYPE_14__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  tableoid; } ;
struct TYPE_15__ {scalar_t__ section; scalar_t__ nDeps; int /*<<< orphan*/ * dependencies; int /*<<< orphan*/  desc; TYPE_2__ catalogId; int /*<<< orphan*/  dumpId; int /*<<< orphan*/  owner; int /*<<< orphan*/  namespace; int /*<<< orphan*/  tag; struct TYPE_15__* next; } ;
typedef  TYPE_3__ TocEntry ;
struct TYPE_13__ {TYPE_4__* ropt; } ;
struct TYPE_17__ {int format; TYPE_3__* toc; int /*<<< orphan*/  archiveDumpVersion; int /*<<< orphan*/  archiveRemoteVersion; scalar_t__ offSize; scalar_t__ intSize; int /*<<< orphan*/  version; int /*<<< orphan*/  compression; int /*<<< orphan*/  tocCount; int /*<<< orphan*/  archdbname; int /*<<< orphan*/  createDate; TYPE_1__ public; } ;
struct TYPE_16__ {scalar_t__ filename; scalar_t__ strict_names; scalar_t__ verbose; } ;
typedef  TYPE_4__ RestoreOptions ;
typedef  int /*<<< orphan*/  OutputContext ;
typedef  TYPE_5__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGDUMP_STRFTIME_FMT ; 
 int REQ_DATA ; 
 int REQ_SCHEMA ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SECTION_NONE ; 
 scalar_t__ SECTION_PRE_DATA ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_3__*,scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,...) ; 
#define  archCustom 130 
#define  archDirectory 129 
#define  archTar 128 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(Archive *AHX)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;
	RestoreOptions *ropt = AH->public.ropt;
	TocEntry   *te;
	teSection	curSection;
	OutputContext sav;
	const char *fmtName;
	char		stamp_str[64];

	sav = FUNC4(AH);
	if (ropt->filename)
		FUNC5(AH, ropt->filename, 0 /* no compression */ );

	if (FUNC13(stamp_str, sizeof(stamp_str), PGDUMP_STRFTIME_FMT,
				 FUNC10(&AH->createDate)) == 0)
		FUNC12(stamp_str, "[unknown]");

	FUNC8(AH, ";\n; Archive created at %s\n", stamp_str);
	FUNC8(AH, ";     dbname: %s\n;     TOC Entries: %d\n;     Compression: %d\n",
			 FUNC11(AH->archdbname, false),
			 AH->tocCount, AH->compression);

	switch (AH->format)
	{
		case archCustom:
			fmtName = "CUSTOM";
			break;
		case archDirectory:
			fmtName = "DIRECTORY";
			break;
		case archTar:
			fmtName = "TAR";
			break;
		default:
			fmtName = "UNKNOWN";
	}

	FUNC8(AH, ";     Dump Version: %d.%d-%d\n",
			 FUNC0(AH->version), FUNC1(AH->version), FUNC2(AH->version));
	FUNC8(AH, ";     Format: %s\n", fmtName);
	FUNC8(AH, ";     Integer: %d bytes\n", (int) AH->intSize);
	FUNC8(AH, ";     Offset: %d bytes\n", (int) AH->offSize);
	if (AH->archiveRemoteVersion)
		FUNC8(AH, ";     Dumped from database version: %s\n",
				 AH->archiveRemoteVersion);
	if (AH->archiveDumpVersion)
		FUNC8(AH, ";     Dumped by pg_dump version: %s\n",
				 AH->archiveDumpVersion);

	FUNC8(AH, ";\n;\n; Selected TOC Entries:\n;\n");

	curSection = SECTION_PRE_DATA;
	for (te = AH->toc->next; te != AH->toc; te = te->next)
	{
		if (te->section != SECTION_NONE)
			curSection = te->section;
		if (ropt->verbose ||
			(FUNC7(te, curSection, AH) & (REQ_SCHEMA | REQ_DATA)) != 0)
		{
			char	   *sanitized_name;
			char	   *sanitized_schema;
			char	   *sanitized_owner;

			/*
			 */
			sanitized_name = FUNC11(te->tag, false);
			sanitized_schema = FUNC11(te->namespace, true);
			sanitized_owner = FUNC11(te->owner, false);

			FUNC8(AH, "%d; %u %u %s %s %s %s\n", te->dumpId,
					 te->catalogId.tableoid, te->catalogId.oid,
					 te->desc, sanitized_schema, sanitized_name,
					 sanitized_owner);

			FUNC9(sanitized_name);
			FUNC9(sanitized_schema);
			FUNC9(sanitized_owner);
		}
		if (ropt->verbose && te->nDeps > 0)
		{
			int			i;

			FUNC8(AH, ";\tdepends on:");
			for (i = 0; i < te->nDeps; i++)
				FUNC8(AH, " %d", te->dependencies[i]);
			FUNC8(AH, "\n");
		}
	}

	/* Enforce strict names checking */
	if (ropt->strict_names)
		FUNC6(ropt);

	if (ropt->filename)
		FUNC3(AH, sav);
}