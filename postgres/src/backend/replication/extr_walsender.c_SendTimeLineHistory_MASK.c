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
typedef  int /*<<< orphan*/  rbuf ;
typedef  scalar_t__ off_t ;
struct TYPE_4__ {int /*<<< orphan*/  timeline; } ;
typedef  TYPE_1__ TimeLineHistoryCmd ;
struct TYPE_5__ {char* data; } ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  int Size ;
typedef  TYPE_2__ PGAlignedBlock ;

/* Variables and functions */
 scalar_t__ BYTEAOID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int FUNC1 (char*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TEXTOID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int,char*,int) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(TimeLineHistoryCmd *cmd)
{
	StringInfoData buf;
	char		histfname[MAXFNAMELEN];
	char		path[MAXPGPATH];
	int			fd;
	off_t		histfilelen;
	off_t		bytesleft;
	Size		len;

	/*
	 * Reply with a result set with one row, and two columns. The first col is
	 * the name of the history file, 2nd is the contents.
	 */

	FUNC2(histfname, cmd->timeline);
	FUNC3(path, cmd->timeline);

	/* Send a RowDescription message */
	FUNC11(&buf, 'T');
	FUNC14(&buf, 2);		/* 2 fields */

	/* first field */
	FUNC16(&buf, "filename");	/* col name */
	FUNC15(&buf, 0);		/* table oid */
	FUNC14(&buf, 0);		/* attnum */
	FUNC15(&buf, TEXTOID);	/* type oid */
	FUNC14(&buf, -1);		/* typlen */
	FUNC15(&buf, 0);		/* typmod */
	FUNC14(&buf, 0);		/* format code */

	/* second field */
	FUNC16(&buf, "content"); /* col name */
	FUNC15(&buf, 0);		/* table oid */
	FUNC14(&buf, 0);		/* attnum */
	FUNC15(&buf, BYTEAOID);	/* type oid */
	FUNC14(&buf, -1);		/* typlen */
	FUNC15(&buf, 0);		/* typmod */
	FUNC14(&buf, 0);		/* format code */
	FUNC12(&buf);

	/* Send a DataRow message */
	FUNC11(&buf, 'D');
	FUNC14(&buf, 2);		/* # of columns */
	len = FUNC18(histfname);
	FUNC15(&buf, len);	/* col1 len */
	FUNC13(&buf, histfname, len);

	fd = FUNC1(path, O_RDONLY | PG_BINARY);
	if (fd < 0)
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not open file \"%s\": %m", path)));

	/* Determine file length and send it to client */
	histfilelen = FUNC8(fd, 0, SEEK_END);
	if (histfilelen < 0)
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not seek to end of file \"%s\": %m", path)));
	if (FUNC8(fd, 0, SEEK_SET) != 0)
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not seek to beginning of file \"%s\": %m", path)));

	FUNC15(&buf, histfilelen);	/* col2 len */

	bytesleft = histfilelen;
	while (bytesleft > 0)
	{
		PGAlignedBlock rbuf;
		int			nread;

		FUNC10(WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ);
		nread = FUNC17(fd, rbuf.data, sizeof(rbuf));
		FUNC9();
		if (nread < 0)
			FUNC4(ERROR,
					(FUNC6(),
					 FUNC7("could not read file \"%s\": %m",
							path)));
		else if (nread == 0)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_DATA_CORRUPTED),
					 FUNC7("could not read file \"%s\": read %d of %zu",
							path, nread, (Size) bytesleft)));

		FUNC13(&buf, rbuf.data, nread);
		bytesleft -= nread;
	}

	if (FUNC0(fd) != 0)
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not close file \"%s\": %m", path)));

	FUNC12(&buf);
}