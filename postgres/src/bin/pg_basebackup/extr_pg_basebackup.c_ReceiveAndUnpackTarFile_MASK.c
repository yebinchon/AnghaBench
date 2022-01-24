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
typedef  int pgoff_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  current_path ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int MAXPGPATH ; 
 scalar_t__ PGRES_COPY_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* basedir ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int FUNC12 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_dir_create_mode ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int) ; 
 int FUNC18 (char*,int) ; 
 int /*<<< orphan*/  recoveryconfcontents ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char const*,char*) ; 
 int totaldone ; 
 scalar_t__ writerecoveryconf ; 

__attribute__((used)) static void
FUNC23(PGconn *conn, PGresult *res, int rownum)
{
	char		current_path[MAXPGPATH];
	char		filename[MAXPGPATH];
	const char *mapped_tblspc_path;
	pgoff_t		current_len_left = 0;
	int			current_padding = 0;
	bool		basetablespace;
	char	   *copybuf = NULL;
	FILE	   *file = NULL;

	basetablespace = FUNC4(res, rownum, 0);
	if (basetablespace)
		FUNC20(current_path, basedir, sizeof(current_path));
	else
		FUNC20(current_path,
				FUNC13(FUNC5(res, rownum, 1)),
				sizeof(current_path));

	/*
	 * Get the COPY data
	 */
	res = FUNC3(conn);
	if (FUNC6(res) != PGRES_COPY_OUT)
	{
		FUNC15("could not get COPY data stream: %s",
					 FUNC0(conn));
		FUNC9(1);
	}

	while (1)
	{
		int			r;

		if (copybuf != NULL)
		{
			FUNC1(copybuf);
			copybuf = NULL;
		}

		r = FUNC2(conn, &copybuf, 0);

		if (r == -1)
		{
			/*
			 * End of chunk
			 */
			if (file)
				FUNC10(file);

			break;
		}
		else if (r == -2)
		{
			FUNC15("could not read COPY data: %s",
						 FUNC0(conn));
			FUNC9(1);
		}

		if (file == NULL)
		{
#ifndef WIN32
			int			filemode;
#endif

			/*
			 * No current file, so this must be the header for a new file
			 */
			if (r != 512)
			{
				FUNC15("invalid tar block header size: %d", r);
				FUNC9(1);
			}
			totaldone += 512;

			current_len_left = FUNC18(&copybuf[124], 12);

#ifndef WIN32
			/* Set permissions on the file */
			filemode = FUNC18(&copybuf[100], 8);
#endif

			/*
			 * All files are padded up to 512 bytes
			 */
			current_padding =
				((current_len_left + 511) & ~511) - current_len_left;

			/*
			 * First part of header is zero terminated filename
			 */
			FUNC19(filename, sizeof(filename), "%s/%s", current_path,
					 copybuf);
			if (filename[FUNC21(filename) - 1] == '/')
			{
				/*
				 * Ends in a slash means directory or symlink to directory
				 */
				if (copybuf[156] == '5')
				{
					/*
					 * Directory
					 */
					filename[FUNC21(filename) - 1] = '\0';	/* Remove trailing slash */
					if (FUNC14(filename, pg_dir_create_mode) != 0)
					{
						/*
						 * When streaming WAL, pg_wal (or pg_xlog for pre-9.6
						 * clusters) will have been created by the wal
						 * receiver process. Also, when the WAL directory
						 * location was specified, pg_wal (or pg_xlog) has
						 * already been created as a symbolic link before
						 * starting the actual backup. So just ignore creation
						 * failures on related directories.
						 */
						if (!((FUNC16(filename, "/pg_wal") ||
							   FUNC16(filename, "/pg_xlog") ||
							   FUNC16(filename, "/archive_status")) &&
							  errno == EEXIST))
						{
							FUNC15("could not create directory \"%s\": %m",
										 filename);
							FUNC9(1);
						}
					}
#ifndef WIN32
					if (FUNC8(filename, (mode_t) filemode))
						FUNC15("could not set permissions on directory \"%s\": %m",
									 filename);
#endif
				}
				else if (copybuf[156] == '2')
				{
					/*
					 * Symbolic link
					 *
					 * It's most likely a link in pg_tblspc directory, to the
					 * location of a tablespace. Apply any tablespace mapping
					 * given on the command line (--tablespace-mapping). (We
					 * blindly apply the mapping without checking that the
					 * link really is inside pg_tblspc. We don't expect there
					 * to be other symlinks in a data directory, but if there
					 * are, you can call it an undocumented feature that you
					 * can map them too.)
					 */
					filename[FUNC21(filename) - 1] = '\0';	/* Remove trailing slash */

					mapped_tblspc_path = FUNC13(&copybuf[157]);
					if (FUNC22(mapped_tblspc_path, filename) != 0)
					{
						FUNC15("could not create symbolic link from \"%s\" to \"%s\": %m",
									 filename, mapped_tblspc_path);
						FUNC9(1);
					}
				}
				else
				{
					FUNC15("unrecognized link indicator \"%c\"",
								 copybuf[156]);
					FUNC9(1);
				}
				continue;		/* directory or link handled */
			}

			/*
			 * regular file
			 */
			file = FUNC11(filename, "wb");
			if (!file)
			{
				FUNC15("could not create file \"%s\": %m", filename);
				FUNC9(1);
			}

#ifndef WIN32
			if (FUNC8(filename, (mode_t) filemode))
				FUNC15("could not set permissions on file \"%s\": %m",
							 filename);
#endif

			if (current_len_left == 0)
			{
				/*
				 * Done with this file, next one will be a new tar header
				 */
				FUNC10(file);
				file = NULL;
				continue;
			}
		}						/* new file */
		else
		{
			/*
			 * Continuing blocks in existing file
			 */
			if (current_len_left == 0 && r == current_padding)
			{
				/*
				 * Received the padding block for this file, ignore it and
				 * close the file, then move on to the next tar header.
				 */
				FUNC10(file);
				file = NULL;
				totaldone += r;
				continue;
			}

			if (FUNC12(copybuf, r, 1, file) != 1)
			{
				FUNC15("could not write to file \"%s\": %m", filename);
				FUNC9(1);
			}
			totaldone += r;
			FUNC17(rownum, filename, false);

			current_len_left -= r;
			if (current_len_left == 0 && current_padding == 0)
			{
				/*
				 * Received the last block, and there is no padding to be
				 * expected. Close the file and move on to the next tar
				 * header.
				 */
				FUNC10(file);
				file = NULL;
				continue;
			}
		}						/* continuing data in existing file */
	}							/* loop over all data blocks */
	FUNC17(rownum, filename, true);

	if (file != NULL)
	{
		FUNC15("COPY stream ended before last file was finished");
		FUNC9(1);
	}

	if (copybuf != NULL)
		FUNC1(copybuf);

	if (basetablespace && writerecoveryconf)
		FUNC7(conn, basedir, recoveryconfcontents);

	/*
	 * No data is synced here, everything is done for all tablespaces at the
	 * end.
	 */
}