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
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/ * page_buffer; } ;
typedef  TYPE_1__* SlruShared ;
typedef  TYPE_2__* SlruCtl ;

/* Variables and functions */
 int BLCKSZ ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  InRecovery ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int O_RDONLY ; 
 int FUNC2 (char*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SLRU_CLOSE_FAILED ; 
 int /*<<< orphan*/  SLRU_OPEN_FAILED ; 
 int SLRU_PAGES_PER_SEGMENT ; 
 int /*<<< orphan*/  SLRU_READ_FAILED ; 
 int /*<<< orphan*/  SLRU_SEEK_FAILED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  WAIT_EVENT_SLRU_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  slru_errcause ; 
 scalar_t__ slru_errno ; 

__attribute__((used)) static bool
FUNC10(SlruCtl ctl, int pageno, int slotno)
{
	SlruShared	shared = ctl->shared;
	int			segno = pageno / SLRU_PAGES_PER_SEGMENT;
	int			rpageno = pageno % SLRU_PAGES_PER_SEGMENT;
	int			offset = rpageno * BLCKSZ;
	char		path[MAXPGPATH];
	int			fd;

	FUNC3(ctl, path, segno);

	/*
	 * In a crash-and-restart situation, it's possible for us to receive
	 * commands to set the commit status of transactions whose bits are in
	 * already-truncated segments of the commit log (see notes in
	 * SlruPhysicalWritePage).  Hence, if we are InRecovery, allow the case
	 * where the file doesn't exist, and return zeroes instead.
	 */
	fd = FUNC2(path, O_RDONLY | PG_BINARY);
	if (fd < 0)
	{
		if (errno != ENOENT || !InRecovery)
		{
			slru_errcause = SLRU_OPEN_FAILED;
			slru_errno = errno;
			return false;
		}

		FUNC4(LOG,
				(FUNC5("file \"%s\" doesn't exist, reading as zeroes",
						path)));
		FUNC1(shared->page_buffer[slotno], 0, BLCKSZ);
		return true;
	}

	if (FUNC6(fd, (off_t) offset, SEEK_SET) < 0)
	{
		slru_errcause = SLRU_SEEK_FAILED;
		slru_errno = errno;
		FUNC0(fd);
		return false;
	}

	errno = 0;
	FUNC8(WAIT_EVENT_SLRU_READ);
	if (FUNC9(fd, shared->page_buffer[slotno], BLCKSZ) != BLCKSZ)
	{
		FUNC7();
		slru_errcause = SLRU_READ_FAILED;
		slru_errno = errno;
		FUNC0(fd);
		return false;
	}
	FUNC7();

	if (FUNC0(fd) != 0)
	{
		slru_errcause = SLRU_CLOSE_FAILED;
		slru_errno = errno;
		return false;
	}

	return true;
}