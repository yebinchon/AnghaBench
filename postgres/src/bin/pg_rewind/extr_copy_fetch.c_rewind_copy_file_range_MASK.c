#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  srcpath ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PGAlignedBlock ;

/* Variables and functions */
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int) ; 
 char* datadir_source ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC8(const char *path, off_t begin, off_t end, bool trunc)
{
	PGAlignedBlock buf;
	char		srcpath[MAXPGPATH];
	int			srcfd;

	FUNC6(srcpath, sizeof(srcpath), "%s/%s", datadir_source, path);

	srcfd = FUNC2(srcpath, O_RDONLY | PG_BINARY, 0);
	if (srcfd < 0)
		FUNC4("could not open source file \"%s\": %m",
				 srcpath);

	if (FUNC1(srcfd, begin, SEEK_SET) == -1)
		FUNC4("could not seek in source file: %m");

	FUNC3(path, trunc);

	while (end - begin > 0)
	{
		int			readlen;
		int			len;

		if (end - begin > sizeof(buf))
			len = sizeof(buf);
		else
			len = end - begin;

		readlen = FUNC5(srcfd, buf.data, len);

		if (readlen < 0)
			FUNC4("could not read file \"%s\": %m",
					 srcpath);
		else if (readlen == 0)
			FUNC4("unexpected EOF while reading file \"%s\"", srcpath);

		FUNC7(buf.data, begin, readlen);
		begin += readlen;
	}

	if (FUNC0(srcfd) != 0)
		FUNC4("could not close file \"%s\": %m", srcpath);
}