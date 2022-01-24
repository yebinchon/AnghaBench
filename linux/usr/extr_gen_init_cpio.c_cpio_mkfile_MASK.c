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
typedef  scalar_t__ uid_t ;
struct stat {long st_size; scalar_t__ st_mtime; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (char*,long,int,int /*<<< orphan*/ ) ; 
 int ino ; 
 char* FUNC5 (long) ; 
 long offset ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int FUNC10 (int,char*,long) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int,unsigned int,long,long,unsigned int,long,long,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(const char *name, const char *location,
			unsigned int mode, uid_t uid, gid_t gid,
			unsigned int nlinks)
{
	char s[256];
	char *filebuf = NULL;
	struct stat buf;
	long size;
	int file = -1;
	int retval;
	int rc = -1;
	int namesize;
	unsigned int i;

	mode |= S_IFREG;

	file = FUNC6 (location, O_RDONLY);
	if (file < 0) {
		FUNC1 (stderr, "File %s could not be opened for reading\n", location);
		goto error;
	}

	retval = FUNC3(file, &buf);
	if (retval) {
		FUNC1(stderr, "File %s could not be stat()'ed\n", location);
		goto error;
	}

	filebuf = FUNC5(buf.st_size);
	if (!filebuf) {
		FUNC1 (stderr, "out of memory\n");
		goto error;
	}

	retval = FUNC10 (file, filebuf, buf.st_size);
	if (retval < 0) {
		FUNC1 (stderr, "Can not read %s file\n", location);
		goto error;
	}

	size = 0;
	for (i = 1; i <= nlinks; i++) {
		/* data goes on last link */
		if (i == nlinks) size = buf.st_size;

		if (name[0] == '/')
			name++;
		namesize = FUNC12(name) + 1;
		FUNC11(s,"%s%08X%08X%08lX%08lX%08X%08lX"
		       "%08lX%08X%08X%08X%08X%08X%08X",
			"070701",		/* magic */
			ino,			/* ino */
			mode,			/* mode */
			(long) uid,		/* uid */
			(long) gid,		/* gid */
			nlinks,			/* nlink */
			(long) buf.st_mtime,	/* mtime */
			size,			/* filesize */
			3,			/* major */
			1,			/* minor */
			0,			/* rmajor */
			0,			/* rminor */
			namesize,		/* namesize */
			0);			/* chksum */
		FUNC7(s);
		FUNC9(name);
		FUNC8();

		if (size) {
			if (FUNC4(filebuf, size, 1, stdout) != 1) {
				FUNC1(stderr, "writing filebuf failed\n");
				goto error;
			}
			offset += size;
			FUNC8();
		}

		name += namesize;
	}
	ino++;
	rc = 0;
	
error:
	if (filebuf) FUNC2(filebuf);
	if (file >= 0) FUNC0(file);
	return rc;
}