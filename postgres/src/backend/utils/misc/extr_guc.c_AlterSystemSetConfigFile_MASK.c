#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union config_var_val {void* stringval; } ;
struct stat {int dummy; } ;
struct config_generic {scalar_t__ context; int flags; scalar_t__ vartype; } ;
struct TYPE_5__ {char* name; int kind; } ;
struct TYPE_4__ {TYPE_2__* setstmt; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ConfigVariable ;
typedef  int /*<<< orphan*/  AutoConfTmpFileName ;
typedef  int /*<<< orphan*/  AutoConfFileName ;
typedef  TYPE_1__ AlterSystemStmt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  AutoFileLock ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ERRCODE_CANT_CHANGE_RUNTIME_PARAM ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int GUC_DISALLOW_IN_AUTO_FILE ; 
 int GUC_DISALLOW_IN_FILE ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 scalar_t__ PGC_INTERNAL ; 
 scalar_t__ PGC_STRING ; 
 int /*<<< orphan*/  PGC_S_FILE ; 
 char* PG_AUTOCONF_FILENAME ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
#define  VAR_RESET 131 
#define  VAR_RESET_ALL 130 
#define  VAR_SET_DEFAULT 129 
#define  VAR_SET_VALUE 128 
 int /*<<< orphan*/  FUNC12 (int volatile) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 struct config_generic* FUNC19 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (struct config_generic*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union config_var_val*,void**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC24 (char*,struct stat*) ; 
 scalar_t__ FUNC25 (char*,char) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (int volatile,char*,int /*<<< orphan*/ *) ; 

void
FUNC29(AlterSystemStmt *altersysstmt)
{
	char	   *name;
	char	   *value;
	bool		resetall = false;
	ConfigVariable *head = NULL;
	ConfigVariable *tail = NULL;
	volatile int Tmpfd;
	char		AutoConfFileName[MAXPGPATH];
	char		AutoConfTmpFileName[MAXPGPATH];

	if (!FUNC26())
		FUNC15(ERROR,
				(FUNC16(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 (FUNC18("must be superuser to execute ALTER SYSTEM command"))));

	/*
	 * Extract statement arguments
	 */
	name = altersysstmt->setstmt->name;

	switch (altersysstmt->setstmt->kind)
	{
		case VAR_SET_VALUE:
			value = FUNC2(altersysstmt->setstmt);
			break;

		case VAR_SET_DEFAULT:
		case VAR_RESET:
			value = NULL;
			break;

		case VAR_RESET_ALL:
			value = NULL;
			resetall = true;
			break;

		default:
			FUNC14(ERROR, "unrecognized alter system stmt type: %d",
				 altersysstmt->setstmt->kind);
			break;
	}

	/*
	 * Unless it's RESET_ALL, validate the target variable and value
	 */
	if (!resetall)
	{
		struct config_generic *record;

		record = FUNC19(name, false, ERROR);
		if (record == NULL)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_UNDEFINED_OBJECT),
					 FUNC18("unrecognized configuration parameter \"%s\"",
							name)));

		/*
		 * Don't allow parameters that can't be set in configuration files to
		 * be set in PG_AUTOCONF_FILENAME file.
		 */
		if ((record->context == PGC_INTERNAL) ||
			(record->flags & GUC_DISALLOW_IN_FILE) ||
			(record->flags & GUC_DISALLOW_IN_AUTO_FILE))
			FUNC15(ERROR,
					(FUNC16(ERRCODE_CANT_CHANGE_RUNTIME_PARAM),
					 FUNC18("parameter \"%s\" cannot be changed",
							name)));

		/*
		 * If a value is specified, verify that it's sane.
		 */
		if (value)
		{
			union config_var_val newval;
			void	   *newextra = NULL;

			/* Check that it's acceptable for the indicated parameter */
			if (!FUNC21(record, name, value,
										  PGC_S_FILE, ERROR,
										  &newval, &newextra))
				FUNC15(ERROR,
						(FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC18("invalid value for parameter \"%s\": \"%s\"",
								name, value)));

			if (record->vartype == PGC_STRING && newval.stringval != NULL)
				FUNC20(newval.stringval);
			if (newextra)
				FUNC20(newextra);

			/*
			 * We must also reject values containing newlines, because the
			 * grammar for config files doesn't support embedded newlines in
			 * string literals.
			 */
			if (FUNC25(value, '\n'))
				FUNC15(ERROR,
						(FUNC16(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC18("parameter value for ALTER SYSTEM must not contain a newline")));
		}
	}

	/*
	 * PG_AUTOCONF_FILENAME and its corresponding temporary file are always in
	 * the data directory, so we can reference them by simple relative paths.
	 */
	FUNC23(AutoConfFileName, sizeof(AutoConfFileName), "%s",
			 PG_AUTOCONF_FILENAME);
	FUNC23(AutoConfTmpFileName, sizeof(AutoConfTmpFileName), "%s.%s",
			 AutoConfFileName,
			 "tmp");

	/*
	 * Only one backend is allowed to operate on PG_AUTOCONF_FILENAME at a
	 * time.  Use AutoFileLock to ensure that.  We must hold the lock while
	 * reading the old file contents.
	 */
	FUNC5(AutoFileLock, LW_EXCLUSIVE);

	/*
	 * If we're going to reset everything, then no need to open or parse the
	 * old file.  We'll just write out an empty list.
	 */
	if (!resetall)
	{
		struct stat st;

		if (FUNC24(AutoConfFileName, &st) == 0)
		{
			/* open old file PG_AUTOCONF_FILENAME */
			FILE	   *infile;

			infile = FUNC0(AutoConfFileName, "r");
			if (infile == NULL)
				FUNC15(ERROR,
						(FUNC17(),
						 FUNC18("could not open file \"%s\": %m",
								AutoConfFileName)));

			/* parse it */
			if (!FUNC11(infile, AutoConfFileName, 0, LOG, &head, &tail))
				FUNC15(ERROR,
						(FUNC16(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC18("could not parse contents of file \"%s\"",
								AutoConfFileName)));

			FUNC4(infile);
		}

		/*
		 * Now, replace any existing entry with the new value, or add it if
		 * not present.
		 */
		FUNC22(&head, &tail, name, value);
	}

	/*
	 * To ensure crash safety, first write the new file data to a temp file,
	 * then atomically rename it into place.
	 *
	 * If there is a temp file left over due to a previous crash, it's okay to
	 * truncate and reuse it.
	 */
	Tmpfd = FUNC1(AutoConfTmpFileName,
						  O_CREAT | O_RDWR | O_TRUNC);
	if (Tmpfd < 0)
		FUNC15(ERROR,
				(FUNC17(),
				 FUNC18("could not open file \"%s\": %m",
						AutoConfTmpFileName)));

	/*
	 * Use a TRY block to clean up the file if we fail.  Since we need a TRY
	 * block anyway, OK to use BasicOpenFile rather than OpenTransientFile.
	 */
	FUNC10();
	{
		/* Write and sync the new contents to the temporary file */
		FUNC28(Tmpfd, AutoConfTmpFileName, head);

		/* Close before renaming; may be required on some platforms */
		FUNC12(Tmpfd);
		Tmpfd = -1;

		/*
		 * As the rename is atomic operation, if any problem occurs after this
		 * at worst it can lose the parameters set by last ALTER SYSTEM
		 * command.
		 */
		FUNC13(AutoConfTmpFileName, AutoConfFileName, ERROR);
	}
	FUNC7();
	{
		/* Close file first, else unlink might fail on some platforms */
		if (Tmpfd >= 0)
			FUNC12(Tmpfd);

		/* Unlink, but ignore any error */
		(void) FUNC27(AutoConfTmpFileName);

		FUNC9();
	}
	FUNC8();

	FUNC3(head);

	FUNC6(AutoFileLock);
}