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
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int O_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int,char const*,char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

TIFF*
FUNC6(const char* name, const char* mode)
{
	static const char module[] = "TIFFOpen";
	int m, fd;
	TIFF* tif;

	m = FUNC2(mode, module);
	if (m == -1)
		return ((TIFF*)0);

/* for cygwin and mingw */
#ifdef O_BINARY
	m |= O_BINARY;
#endif

	fd = FUNC4(name, m, 0666);
	if (fd < 0) {
		if (errno > 0 && FUNC5(errno) != NULL ) {
			FUNC0(0, module, "%s: %s", name, FUNC5(errno) );
		} else {
			FUNC0(0, module, "%s: Cannot open", name);
		}
		return ((TIFF *)0);
	}

	tif = FUNC1((int)fd, name, mode);
	if(!tif)
		FUNC3(fd);
	return tif;
}