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
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  PG_BINARY_R ; 
 size_t ZLIB_OUT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int cfp ; 
 size_t FUNC3 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 

__attribute__((used)) static void
FUNC7(ArchiveHandle *AH, char *filename)
{
	size_t		cnt;
	char	   *buf;
	size_t		buflen;
	cfp		   *cfp;

	if (!filename)
		return;

	cfp = FUNC2(filename, PG_BINARY_R);

	if (!cfp)
		FUNC4("could not open input file \"%s\": %m", filename);

	buf = FUNC6(ZLIB_OUT_SIZE);
	buflen = ZLIB_OUT_SIZE;

	while ((cnt = FUNC3(buf, buflen, cfp)))
	{
		FUNC0(buf, 1, cnt, AH);
	}

	FUNC5(buf);
	if (FUNC1(cfp) !=0)
		FUNC4("could not close data file: %m");
}