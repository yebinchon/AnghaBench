#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_3__ {char* lookahead; int lookaheadSize; int lookaheadLen; char* fSpec; int format; int intSize; int offSize; int readHeader; int /*<<< orphan*/  version; scalar_t__ lookaheadPos; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  K_VERS_1_7 ; 
 int /*<<< orphan*/  FUNC0 (char,char,char) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* TEXT_DUMPALL_HEADER ; 
 char* TEXT_DUMP_HEADER ; 
 void* archDirectory ; 
 int archTar ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int) ; 
 int FUNC17 (char*,int,char*,char*) ; 
 scalar_t__ FUNC18 (char*,struct stat*) ; 
 int /*<<< orphan*/ * stdin ; 
 int FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC21(ArchiveHandle *AH)
{
	FILE	   *fh;
	char		sig[6];			/* More than enough */
	size_t		cnt;
	int			wantClose = 0;

	FUNC15("attempting to ascertain archive format");

	if (AH->lookahead)
		FUNC11(AH->lookahead);

	AH->lookaheadSize = 512;
	AH->lookahead = FUNC16(512);
	AH->lookaheadLen = 0;
	AH->lookaheadPos = 0;

	if (AH->fSpec)
	{
		struct stat st;

		wantClose = 1;

		/*
		 * Check if the specified archive is a directory. If so, check if
		 * there's a "toc.dat" (or "toc.dat.gz") file in it.
		 */
		if (FUNC18(AH->fSpec, &st) == 0 && FUNC2(st.st_mode))
		{
			char		buf[MAXPGPATH];

			if (FUNC17(buf, MAXPGPATH, "%s/toc.dat", AH->fSpec) >= MAXPGPATH)
				FUNC4("directory name too long: \"%s\"",
					  AH->fSpec);
			if (FUNC18(buf, &st) == 0 && FUNC3(st.st_mode))
			{
				AH->format = archDirectory;
				return AH->format;
			}

#ifdef HAVE_LIBZ
			if (snprintf(buf, MAXPGPATH, "%s/toc.dat.gz", AH->fSpec) >= MAXPGPATH)
				fatal("directory name too long: \"%s\"",
					  AH->fSpec);
			if (stat(buf, &st) == 0 && S_ISREG(st.st_mode))
			{
				AH->format = archDirectory;
				return AH->format;
			}
#endif
			FUNC4("directory \"%s\" does not appear to be a valid archive (\"toc.dat\" does not exist)",
				  AH->fSpec);
			fh = NULL;			/* keep compiler quiet */
		}
		else
		{
			fh = FUNC9(AH->fSpec, PG_BINARY_R);
			if (!fh)
				FUNC4("could not open input file \"%s\": %m", AH->fSpec);
		}
	}
	else
	{
		fh = stdin;
		if (!fh)
			FUNC4("could not open input file: %m");
	}

	if ((cnt = FUNC10(sig, 1, 5, fh)) != 5)
	{
		if (FUNC7(fh))
			FUNC4("could not read input file: %m");
		else
			FUNC4("input file is too short (read %lu, expected 5)",
				  (unsigned long) cnt);
	}

	/* Save it, just in case we need it later */
	FUNC14(&AH->lookahead[0], sig, 5);
	AH->lookaheadLen = 5;

	if (FUNC20(sig, "PGDMP", 5) == 0)
	{
		int			byteread;
		char		vmaj,
					vmin,
					vrev;

		/*
		 * Finish reading (most of) a custom-format header.
		 *
		 * NB: this code must agree with ReadHead().
		 */
		if ((byteread = FUNC8(fh)) == EOF)
			FUNC1(fh);

		vmaj = byteread;

		if ((byteread = FUNC8(fh)) == EOF)
			FUNC1(fh);

		vmin = byteread;

		/* Save these too... */
		AH->lookahead[AH->lookaheadLen++] = vmaj;
		AH->lookahead[AH->lookaheadLen++] = vmin;

		/* Check header version; varies from V1.0 */
		if (vmaj > 1 || (vmaj == 1 && vmin > 0))	/* Version > 1.0 */
		{
			if ((byteread = FUNC8(fh)) == EOF)
				FUNC1(fh);

			vrev = byteread;
			AH->lookahead[AH->lookaheadLen++] = vrev;
		}
		else
			vrev = 0;

		AH->version = FUNC0(vmaj, vmin, vrev);

		if ((AH->intSize = FUNC8(fh)) == EOF)
			FUNC1(fh);
		AH->lookahead[AH->lookaheadLen++] = AH->intSize;

		if (AH->version >= K_VERS_1_7)
		{
			if ((AH->offSize = FUNC8(fh)) == EOF)
				FUNC1(fh);
			AH->lookahead[AH->lookaheadLen++] = AH->offSize;
		}
		else
			AH->offSize = AH->intSize;

		if ((byteread = FUNC8(fh)) == EOF)
			FUNC1(fh);

		AH->format = byteread;
		AH->lookahead[AH->lookaheadLen++] = AH->format;
	}
	else
	{
		/*
		 * *Maybe* we have a tar archive format file or a text dump ... So,
		 * read first 512 byte header...
		 */
		cnt = FUNC10(&AH->lookahead[AH->lookaheadLen], 1, 512 - AH->lookaheadLen, fh);
		/* read failure is checked below */
		AH->lookaheadLen += cnt;

		if (AH->lookaheadLen >= FUNC19(TEXT_DUMPALL_HEADER) &&
			(FUNC20(AH->lookahead, TEXT_DUMP_HEADER, FUNC19(TEXT_DUMP_HEADER)) == 0 ||
			 FUNC20(AH->lookahead, TEXT_DUMPALL_HEADER, FUNC19(TEXT_DUMPALL_HEADER)) == 0))
		{
			/*
			 * looks like it's probably a text format dump. so suggest they
			 * try psql
			 */
			FUNC4("input file appears to be a text format dump. Please use psql.");
		}

		if (AH->lookaheadLen != 512)
		{
			if (FUNC6(fh))
				FUNC4("input file does not appear to be a valid archive (too short?)");
			else
				FUNC1(fh);
		}

		if (!FUNC13(AH->lookahead))
			FUNC4("input file does not appear to be a valid archive");

		AH->format = archTar;
	}

	/* If we can't seek, then mark the header as read */
	if (FUNC12(fh, 0, SEEK_SET) != 0)
	{
		/*
		 * NOTE: Formats that use the lookahead buffer can unset this in their
		 * Init routine.
		 */
		AH->readHeader = 1;
	}
	else
		AH->lookaheadLen = 0;	/* Don't bother since we've reset the file */

	/* Close the file */
	if (wantClose)
		if (FUNC5(fh) != 0)
			FUNC4("could not close input file: %m");

	return AH->format;
}