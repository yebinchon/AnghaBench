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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  fn ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  Walfile ;
struct TYPE_5__ {char* partial_suffix; TYPE_1__* walmethod; int /*<<< orphan*/  timeline; } ;
struct TYPE_4__ {scalar_t__ (* get_file_size ) (char*) ;scalar_t__ (* sync ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getlasterror ) () ;int /*<<< orphan*/ * (* open_for_write ) (char*,char*,scalar_t__) ;int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ (* existsfile ) (char*) ;} ;
typedef  TYPE_2__ StreamCtl ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_UNLINK ; 
 scalar_t__ ENOSPC ; 
 int MAXPGPATH ; 
 scalar_t__ WalSegSz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* current_walfile_name ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/ * walfile ; 

__attribute__((used)) static bool
FUNC17(StreamCtl *stream, XLogRecPtr startpoint)
{
	Walfile    *f;
	char		fn[MAXPGPATH];
	ssize_t		size;
	XLogSegNo	segno;

	FUNC0(startpoint, segno, WalSegSz);
	FUNC1(current_walfile_name, stream->timeline, segno, WalSegSz);

	FUNC6(fn, sizeof(fn), "%s%s", current_walfile_name,
			 stream->partial_suffix ? stream->partial_suffix : "");

	/*
	 * When streaming to files, if an existing file exists we verify that it's
	 * either empty (just created), or a complete WalSegSz segment (in which
	 * case it has been created and padded). Anything else indicates a corrupt
	 * file.
	 *
	 * When streaming to tar, no file with this name will exist before, so we
	 * never have to verify a size.
	 */
	if (stream->walmethod->existsfile(fn))
	{
		size = stream->walmethod->get_file_size(fn);
		if (size < 0)
		{
			FUNC4("could not get size of write-ahead log file \"%s\": %s",
						 fn, stream->walmethod->getlasterror());
			return false;
		}
		if (size == WalSegSz)
		{
			/* Already padded file. Open it for use */
			f = stream->walmethod->open_for_write(current_walfile_name, stream->partial_suffix, 0);
			if (f == NULL)
			{
				FUNC4("could not open existing write-ahead log file \"%s\": %s",
							 fn, stream->walmethod->getlasterror());
				return false;
			}

			/* fsync file in case of a previous crash */
			if (stream->walmethod->sync(f) != 0)
			{
				FUNC5("could not fsync existing write-ahead log file \"%s\": %s",
							 fn, stream->walmethod->getlasterror());
				stream->walmethod->close(f, CLOSE_UNLINK);
				FUNC2(1);
			}

			walfile = f;
			return true;
		}
		if (size != 0)
		{
			/* if write didn't set errno, assume problem is no disk space */
			if (errno == 0)
				errno = ENOSPC;
			FUNC4(FUNC3("write-ahead log file \"%s\" has %d byte, should be 0 or %d",
								  "write-ahead log file \"%s\" has %d bytes, should be 0 or %d",
								  size),
						 fn, (int) size, WalSegSz);
			return false;
		}
		/* File existed and was empty, so fall through and open */
	}

	/* No file existed, so create one */

	f = stream->walmethod->open_for_write(current_walfile_name,
										  stream->partial_suffix, WalSegSz);
	if (f == NULL)
	{
		FUNC4("could not open write-ahead log file \"%s\": %s",
					 fn, stream->walmethod->getlasterror());
		return false;
	}

	walfile = f;
	return true;
}