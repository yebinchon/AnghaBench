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
typedef  int /*<<< orphan*/  XLogSegNo ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int MAXPGPATH ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PANIC ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_method ; 
 int /*<<< orphan*/  wal_segment_size ; 

int
FUNC6(XLogSegNo segno)
{
	char		path[MAXPGPATH];
	int			fd;

	FUNC1(path, ThisTimeLineID, segno, wal_segment_size);

	fd = FUNC0(path, O_RDWR | PG_BINARY | FUNC5(sync_method));
	if (fd < 0)
		FUNC2(PANIC,
				(FUNC3(),
				 FUNC4("could not open file \"%s\": %m", path)));

	return fd;
}