#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Walfile ;
struct TYPE_6__ {char* timeline; scalar_t__ mark_done; TYPE_1__* walmethod; } ;
struct TYPE_5__ {char* (* getlasterror ) () ;scalar_t__ (* close ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ (* write ) (int /*<<< orphan*/ *,char*,int) ;int /*<<< orphan*/ * (* open_for_write ) (char*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ StreamCtl ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_NORMAL ; 
 int /*<<< orphan*/  CLOSE_UNLINK ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 () ; 

__attribute__((used)) static bool
FUNC12(StreamCtl *stream, char *filename, char *content)
{
	int			size = FUNC4(content);
	char		histfname[MAXFNAMELEN];
	Walfile    *f;

	/*
	 * Check that the server's idea of how timeline history files should be
	 * named matches ours.
	 */
	FUNC0(histfname, stream->timeline);
	if (FUNC3(histfname, filename) != 0)
	{
		FUNC2("server reported unexpected history file name for timeline %u: %s",
					 stream->timeline, filename);
		return false;
	}

	f = stream->walmethod->open_for_write(histfname, ".tmp", 0);
	if (f == NULL)
	{
		FUNC2("could not create timeline history file \"%s\": %s",
					 histfname, stream->walmethod->getlasterror());
		return false;
	}

	if ((int) stream->walmethod->write(f, content, size) != size)
	{
		FUNC2("could not write timeline history file \"%s\": %s",
					 histfname, stream->walmethod->getlasterror());

		/*
		 * If we fail to make the file, delete it to release disk space
		 */
		stream->walmethod->close(f, CLOSE_UNLINK);

		return false;
	}

	if (stream->walmethod->close(f, CLOSE_NORMAL) != 0)
	{
		FUNC2("could not close file \"%s\": %s",
					 histfname, stream->walmethod->getlasterror());
		return false;
	}

	/* Maintain archive_status, check close_walfile() for details. */
	if (stream->mark_done)
	{
		/* writes error message if failed */
		if (!FUNC1(stream, histfname))
			return false;
	}

	return true;
}