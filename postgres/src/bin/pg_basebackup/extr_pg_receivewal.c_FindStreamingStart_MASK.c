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
typedef  scalar_t__ uint32 ;
struct stat {int st_size; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ XLogSegNo ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int WalSegSz ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* basedir ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (int,char*,int) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC17 (char*,struct stat*) ; 

__attribute__((used)) static XLogRecPtr
FUNC18(uint32 *tli)
{
	DIR		   *dir;
	struct dirent *dirent;
	XLogSegNo	high_segno = 0;
	uint32		high_tli = 0;
	bool		high_ispartial = false;

	dir = FUNC9(basedir);

	while (errno = 0, (dirent = FUNC15(dir)) != NULL)
	{
		uint32		tli;
		XLogSegNo	segno;
		bool		ispartial;
		bool		iscompress;

		/*
		 * Check if the filename looks like an xlog file, or a .partial file.
		 */
		if (FUNC3(dirent->d_name))
		{
			ispartial = false;
			iscompress = false;
		}
		else if (FUNC2(dirent->d_name))
		{
			ispartial = true;
			iscompress = false;
		}
		else if (FUNC0(dirent->d_name))
		{
			ispartial = false;
			iscompress = true;
		}
		else if (FUNC1(dirent->d_name))
		{
			ispartial = true;
			iscompress = true;
		}
		else
			continue;

		/*
		 * Looks like an xlog file. Parse its position.
		 */
		FUNC4(dirent->d_name, &tli, &segno, WalSegSz);

		/*
		 * Check that the segment has the right size, if it's supposed to be
		 * completed.  For non-compressed segments just check the on-disk size
		 * and see if it matches a completed segment. For compressed segments,
		 * look at the last 4 bytes of the compressed file, which is where the
		 * uncompressed size is located for gz files with a size lower than
		 * 4GB, and then compare it to the size of a completed segment. The 4
		 * last bytes correspond to the ISIZE member according to
		 * http://www.zlib.org/rfc-gzip.html.
		 */
		if (!ispartial && !iscompress)
		{
			struct stat statbuf;
			char		fullpath[MAXPGPATH * 2];

			FUNC16(fullpath, sizeof(fullpath), "%s/%s", basedir, dirent->d_name);
			if (FUNC17(fullpath, &statbuf) != 0)
			{
				FUNC12("could not stat file \"%s\": %m", fullpath);
				FUNC8(1);
			}

			if (statbuf.st_size != WalSegSz)
			{
				FUNC13("segment file \"%s\" has incorrect size %d, skipping",
							   dirent->d_name, (int) statbuf.st_size);
				continue;
			}
		}
		else if (!ispartial && iscompress)
		{
			int			fd;
			char		buf[4];
			int			bytes_out;
			char		fullpath[MAXPGPATH * 2];
			int			r;

			FUNC16(fullpath, sizeof(fullpath), "%s/%s", basedir, dirent->d_name);

			fd = FUNC11(fullpath, O_RDONLY | PG_BINARY, 0);
			if (fd < 0)
			{
				FUNC12("could not open compressed file \"%s\": %m",
							 fullpath);
				FUNC8(1);
			}
			if (FUNC10(fd, (off_t) (-4), SEEK_END) < 0)
			{
				FUNC12("could not seek in compressed file \"%s\": %m",
							 fullpath);
				FUNC8(1);
			}
			r = FUNC14(fd, (char *) buf, sizeof(buf));
			if (r != sizeof(buf))
			{
				if (r < 0)
					FUNC12("could not read compressed file \"%s\": %m",
								 fullpath);
				else
					FUNC12("could not read compressed file \"%s\": read %d of %zu",
								 fullpath, r, sizeof(buf));
				FUNC8(1);
			}

			FUNC6(fd);
			bytes_out = (buf[3] << 24) | (buf[2] << 16) |
				(buf[1] << 8) | buf[0];

			if (bytes_out != WalSegSz)
			{
				FUNC13("compressed segment file \"%s\" has incorrect uncompressed size %d, skipping",
							   dirent->d_name, bytes_out);
				continue;
			}
		}

		/* Looks like a valid segment. Remember that we saw it. */
		if ((segno > high_segno) ||
			(segno == high_segno && tli > high_tli) ||
			(segno == high_segno && tli == high_tli && high_ispartial && !ispartial))
		{
			high_segno = segno;
			high_tli = tli;
			high_ispartial = ispartial;
		}
	}

	if (errno)
	{
		FUNC12("could not read directory \"%s\": %m", basedir);
		FUNC8(1);
	}

	FUNC7(dir, basedir);

	if (high_segno > 0)
	{
		XLogRecPtr	high_ptr;

		/*
		 * Move the starting pointer to the start of the next segment, if the
		 * highest one we saw was completed. Otherwise start streaming from
		 * the beginning of the .partial segment.
		 */
		if (!high_ispartial)
			high_segno++;

		FUNC5(high_segno, 0, WalSegSz, high_ptr);

		*tli = high_tli;
		return high_ptr;
	}
	else
		return InvalidXLogRecPtr;
}