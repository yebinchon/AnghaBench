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

/* Variables and functions */
 char* LABEL_FORMAT ; 
 char* NA_FORMAT ; 
 int OPEN_SYNC_FLAG ; 
 int O_RDWR ; 
 int PG_O_DIRECT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  START_TIMER ; 
 int /*<<< orphan*/  STOP_TIMER ; 
 char const* FUNC0 (char*) ; 
 int alarm_triggered ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(const char *msg, int writes_size)
{
#ifdef OPEN_SYNC_FLAG
	int			tmpfile,
				ops,
				writes;
#endif

	FUNC6(LABEL_FORMAT, msg);
	FUNC3(stdout);

#ifdef OPEN_SYNC_FLAG
	if ((tmpfile = open(filename, O_RDWR | OPEN_SYNC_FLAG | PG_O_DIRECT, 0)) == -1)
		printf(NA_FORMAT, _("n/a*"));
	else
	{
		START_TIMER;
		for (ops = 0; alarm_triggered == false; ops++)
		{
			for (writes = 0; writes < 16 / writes_size; writes++)
				if (write(tmpfile, buf, writes_size * 1024) !=
					writes_size * 1024)
					die("write failed");
			if (lseek(tmpfile, 0, SEEK_SET) == -1)
				die("seek failed");
		}
		STOP_TIMER;
		close(tmpfile);
	}
#else
	FUNC6(NA_FORMAT, FUNC0("n/a"));
#endif
}