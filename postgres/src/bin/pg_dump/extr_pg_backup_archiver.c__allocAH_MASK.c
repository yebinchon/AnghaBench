#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_11__ {struct TYPE_11__* prev; struct TYPE_11__* next; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_10__ {int std_strings; int exit_on_error; scalar_t__ n_errors; scalar_t__ encoding; } ;
struct TYPE_12__ {int intSize; int offSize; int compression; int dosync; scalar_t__ format; int /*<<< orphan*/  promptPassword; int /*<<< orphan*/  SetupWorkerPtr; int /*<<< orphan*/ * fSpec; int /*<<< orphan*/  OF; scalar_t__ gzOut; int /*<<< orphan*/  sqlparse; scalar_t__ mode; TYPE_2__* toc; int /*<<< orphan*/ * currTableAm; int /*<<< orphan*/ * currTablespace; int /*<<< orphan*/ * currSchema; int /*<<< orphan*/ * currUser; int /*<<< orphan*/  createDate; int /*<<< orphan*/  archiveDumpVersion; TYPE_1__ public; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  SetupWorkerPtrType ;
typedef  scalar_t__ ArchiveMode ;
typedef  TYPE_3__ ArchiveHandle ;
typedef  scalar_t__ ArchiveFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  K_VERS_SELF ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  PG_VERSION ; 
 int /*<<< orphan*/  TRI_DEFAULT ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  archCustom 131 
#define  archDirectory 130 
 scalar_t__ archModeWrite ; 
#define  archNull 129 
#define  archTar 128 
 scalar_t__ const archUnknown ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,scalar_t__ const) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ArchiveHandle *
FUNC14(const char *FileSpec, const ArchiveFormat fmt,
		 const int compression, bool dosync, ArchiveMode mode,
		 SetupWorkerPtrType setupWorkerPtr)
{
	ArchiveHandle *AH;

	FUNC9("allocating AH for %s, format %d", FileSpec, fmt);

	AH = (ArchiveHandle *) FUNC10(sizeof(ArchiveHandle));

	AH->version = K_VERS_SELF;

	/* initialize for backwards compatible string processing */
	AH->public.encoding = 0;	/* PG_SQL_ASCII */
	AH->public.std_strings = false;

	/* sql error handling */
	AH->public.exit_on_error = true;
	AH->public.n_errors = 0;

	AH->archiveDumpVersion = PG_VERSION;

	AH->createDate = FUNC13(NULL);

	AH->intSize = sizeof(int);
	AH->offSize = sizeof(pgoff_t);
	if (FileSpec)
	{
		AH->fSpec = FUNC11(FileSpec);

		/*
		 * Not used; maybe later....
		 *
		 * AH->workDir = pg_strdup(FileSpec); for(i=strlen(FileSpec) ; i > 0 ;
		 * i--) if (AH->workDir[i-1] == '/')
		 */
	}
	else
		AH->fSpec = NULL;

	AH->currUser = NULL;		/* unknown */
	AH->currSchema = NULL;		/* ditto */
	AH->currTablespace = NULL;	/* ditto */
	AH->currTableAm = NULL;		/* ditto */

	AH->toc = (TocEntry *) FUNC10(sizeof(TocEntry));

	AH->toc->next = AH->toc;
	AH->toc->prev = AH->toc;

	AH->mode = mode;
	AH->compression = compression;
	AH->dosync = dosync;

	FUNC8(&(AH->sqlparse), 0, sizeof(AH->sqlparse));

	/* Open stdout with no compression for AH output handle */
	AH->gzOut = 0;
	AH->OF = stdout;

	/*
	 * On Windows, we need to use binary mode to read/write non-text files,
	 * which include all archive formats as well as compressed plain text.
	 * Force stdin/stdout into binary mode if that is what we are using.
	 */
#ifdef WIN32
	if ((fmt != archNull || compression != 0) &&
		(AH->fSpec == NULL || strcmp(AH->fSpec, "") == 0))
	{
		if (mode == archModeWrite)
			_setmode(fileno(stdout), O_BINARY);
		else
			_setmode(fileno(stdin), O_BINARY);
	}
#endif

	AH->SetupWorkerPtr = setupWorkerPtr;

	if (fmt == archUnknown)
		AH->format = FUNC4(AH);
	else
		AH->format = fmt;

	AH->promptPassword = TRI_DEFAULT;

	switch (AH->format)
	{
		case archCustom:
			FUNC0(AH);
			break;

		case archNull:
			FUNC2(AH);
			break;

		case archDirectory:
			FUNC1(AH);
			break;

		case archTar:
			FUNC3(AH);
			break;

		default:
			FUNC6("unrecognized file format \"%d\"", fmt);
	}

	return AH;
}