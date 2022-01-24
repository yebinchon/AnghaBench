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
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ MaxAllocHugeSize ; 
 int O_RDONLY ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGSS_TEXT_FILE ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int,struct stat*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static char *
FUNC11(Size *buffer_size)
{
	char	   *buf;
	int			fd;
	struct stat stat;

	fd = FUNC1(PGSS_TEXT_FILE, O_RDONLY | PG_BINARY);
	if (fd < 0)
	{
		if (errno != ENOENT)
			FUNC2(LOG,
					(FUNC4(),
					 FUNC6("could not read file \"%s\": %m",
							PGSS_TEXT_FILE)));
		return NULL;
	}

	/* Get file length */
	if (FUNC8(fd, &stat))
	{
		FUNC2(LOG,
				(FUNC4(),
				 FUNC6("could not stat file \"%s\": %m",
						PGSS_TEXT_FILE)));
		FUNC0(fd);
		return NULL;
	}

	/* Allocate buffer; beware that off_t might be wider than size_t */
	if (stat.st_size <= MaxAllocHugeSize)
		buf = (char *) FUNC9(stat.st_size);
	else
		buf = NULL;
	if (buf == NULL)
	{
		FUNC2(LOG,
				(FUNC3(ERRCODE_OUT_OF_MEMORY),
				 FUNC6("out of memory"),
				 FUNC5("Could not allocate enough memory to read file \"%s\".",
						   PGSS_TEXT_FILE)));
		FUNC0(fd);
		return NULL;
	}

	/*
	 * OK, slurp in the file.  If we get a short read and errno doesn't get
	 * set, the reason is probably that garbage collection truncated the file
	 * since we did the fstat(), so we don't log a complaint --- but we don't
	 * return the data, either, since it's most likely corrupt due to
	 * concurrent writes from garbage collection.
	 */
	errno = 0;
	if (FUNC10(fd, buf, stat.st_size) != stat.st_size)
	{
		if (errno)
			FUNC2(LOG,
					(FUNC4(),
					 FUNC6("could not read file \"%s\": %m",
							PGSS_TEXT_FILE)));
		FUNC7(buf);
		FUNC0(fd);
		return NULL;
	}

	if (FUNC0(fd) != 0)
		FUNC2(LOG,
				(FUNC4(),
				 FUNC6("could not close file \"%s\": %m", PGSS_TEXT_FILE)));

	*buffer_size = stat.st_size;
	return buf;
}