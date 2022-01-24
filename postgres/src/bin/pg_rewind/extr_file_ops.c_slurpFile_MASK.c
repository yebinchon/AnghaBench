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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char const*) ; 

char *
FUNC7(const char *datadir, const char *path, size_t *filesize)
{
	int			fd;
	char	   *buffer;
	struct stat statbuf;
	char		fullpath[MAXPGPATH];
	int			len;
	int			r;

	FUNC6(fullpath, sizeof(fullpath), "%s/%s", datadir, path);

	if ((fd = FUNC2(fullpath, O_RDONLY | PG_BINARY, 0)) == -1)
		FUNC3("could not open file \"%s\" for reading: %m",
				 fullpath);

	if (FUNC1(fd, &statbuf) < 0)
		FUNC3("could not open file \"%s\" for reading: %m",
				 fullpath);

	len = statbuf.st_size;

	buffer = FUNC4(len + 1);

	r = FUNC5(fd, buffer, len);
	if (r != len)
	{
		if (r < 0)
			FUNC3("could not read file \"%s\": %m",
					 fullpath);
		else
			FUNC3("could not read file \"%s\": read %d of %zu",
					 fullpath, r, (Size) len);
	}
	FUNC0(fd);

	/* Zero-terminate the buffer. */
	buffer[len] = '\0';

	if (filesize)
		*filesize = len;
	return buffer;
}