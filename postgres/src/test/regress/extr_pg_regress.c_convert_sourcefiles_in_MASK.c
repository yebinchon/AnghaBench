#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DLSUFFIX ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* dlpath ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 char* inputdir ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* outputdir ; 
 char** FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char const*,...) ; 
 int FUNC15 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(const char *source_subdir, const char *dest_dir, const char *dest_subdir, const char *suffix)
{
	char		testtablespace[MAXPGPATH];
	char		indir[MAXPGPATH];
	struct stat st;
	int			ret;
	char	  **name;
	char	  **names;
	int			count = 0;

	FUNC14(indir, MAXPGPATH, "%s/%s", inputdir, source_subdir);

	/* Check that indir actually exists and is a directory */
	ret = FUNC15(indir, &st);
	if (ret != 0 || !FUNC0(st.st_mode))
	{
		/*
		 * No warning, to avoid noise in tests that do not have these
		 * directories; for example, ecpg, contrib and src/pl.
		 */
		return;
	}

	names = FUNC10(indir);
	if (!names)
		/* Error logged in pgfnames */
		FUNC3(2);

	FUNC14(testtablespace, MAXPGPATH, "%s/testtablespace", outputdir);

#ifdef WIN32

	/*
	 * On Windows only, clean out the test tablespace dir, or create it if it
	 * doesn't exist.  On other platforms we expect the Makefile to take care
	 * of that.  (We don't migrate that functionality in here because it'd be
	 * harder to cope with platform-specific issues such as SELinux.)
	 *
	 * XXX it would be better if pg_regress.c had nothing at all to do with
	 * testtablespace, and this were handled by a .BAT file or similar on
	 * Windows.  See pgsql-hackers discussion of 2008-01-18.
	 */
	if (directory_exists(testtablespace))
		if (!rmtree(testtablespace, true))
		{
			fprintf(stderr, _("\n%s: could not remove test tablespace \"%s\"\n"),
					progname, testtablespace);
			exit(2);
		}
	make_directory(testtablespace);
#endif

	/* finally loop on each file and do the replacement */
	for (name = names; *name; name++)
	{
		char		srcfile[MAXPGPATH];
		char		destfile[MAXPGPATH];
		char		prefix[MAXPGPATH];
		FILE	   *infile,
				   *outfile;
		char		line[1024];

		/* reject filenames not finishing in ".source" */
		if (FUNC18(*name) < 8)
			continue;
		if (FUNC16(*name + FUNC18(*name) - 7, ".source") != 0)
			continue;

		count++;

		/* build the full actual paths to open */
		FUNC14(prefix, FUNC18(*name) - 6, "%s", *name);
		FUNC14(srcfile, MAXPGPATH, "%s/%s", indir, *name);
		FUNC14(destfile, MAXPGPATH, "%s/%s/%s.%s", dest_dir, dest_subdir,
				 prefix, suffix);

		infile = FUNC6(srcfile, "r");
		if (!infile)
		{
			FUNC7(stderr, FUNC1("%s: could not open file \"%s\" for reading: %s\n"),
					progname, srcfile, FUNC17(errno));
			FUNC3(2);
		}
		outfile = FUNC6(destfile, "w");
		if (!outfile)
		{
			FUNC7(stderr, FUNC1("%s: could not open file \"%s\" for writing: %s\n"),
					progname, destfile, FUNC17(errno));
			FUNC3(2);
		}
		while (FUNC5(line, sizeof(line), infile))
		{
			FUNC12(line, "@abs_srcdir@", inputdir);
			FUNC12(line, "@abs_builddir@", outputdir);
			FUNC12(line, "@testtablespace@", testtablespace);
			FUNC12(line, "@libdir@", dlpath);
			FUNC12(line, "@DLSUFFIX@", DLSUFFIX);
			FUNC8(line, outfile);
		}
		FUNC4(infile);
		FUNC4(outfile);
	}

	/*
	 * If we didn't process any files, complain because it probably means
	 * somebody neglected to pass the needed --inputdir argument.
	 */
	if (count <= 0)
	{
		FUNC7(stderr, FUNC1("%s: no *.source files found in \"%s\"\n"),
				progname, indir);
		FUNC3(2);
	}

	FUNC11(names);
}