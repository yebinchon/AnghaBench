#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ data_checksum_version; } ;
struct TYPE_8__ {TYPE_1__ controldata; } ;
struct TYPE_7__ {char* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd_checksum; } ;
typedef  char PageHeaderData ;
typedef  TYPE_2__* PageHeader ;
typedef  TYPE_3__ PGAlignedBlock ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int BITS_PER_HEAPBLOCK ; 
 int BLCKSZ ; 
 scalar_t__ ENOSPC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int SizeOfPageHeaderData ; 
 int VISIBILITYMAP_ALL_VISIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_4__ new_cluster ; 
 int FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/  pg_file_create_mode ; 
 scalar_t__ FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int,char*,int) ; 

void
FUNC9(const char *fromfile, const char *tofile,
					 const char *schemaName, const char *relName)
{
	int			src_fd;
	int			dst_fd;
	PGAlignedBlock buffer;
	PGAlignedBlock new_vmbuf;
	ssize_t		totalBytesRead = 0;
	ssize_t		src_filesize;
	int			rewriteVmBytesPerPage;
	BlockNumber new_blkno = 0;
	struct stat statbuf;

	/* Compute number of old-format bytes per new page */
	rewriteVmBytesPerPage = (BLCKSZ - SizeOfPageHeaderData) / 2;

	if ((src_fd = FUNC3(fromfile, O_RDONLY | PG_BINARY, 0)) < 0)
		FUNC5("error while copying relation \"%s.%s\": could not open file \"%s\": %s\n",
				 schemaName, relName, fromfile, FUNC7(errno));

	if (FUNC1(src_fd, &statbuf) != 0)
		FUNC5("error while copying relation \"%s.%s\": could not stat file \"%s\": %s\n",
				 schemaName, relName, fromfile, FUNC7(errno));

	if ((dst_fd = FUNC3(tofile, O_RDWR | O_CREAT | O_EXCL | PG_BINARY,
					   pg_file_create_mode)) < 0)
		FUNC5("error while copying relation \"%s.%s\": could not create file \"%s\": %s\n",
				 schemaName, relName, tofile, FUNC7(errno));

	/* Save old file size */
	src_filesize = statbuf.st_size;

	/*
	 * Turn each visibility map page into 2 pages one by one. Each new page
	 * has the same page header as the old one.  If the last section of the
	 * last page is empty, we skip it, mostly to avoid turning one-page
	 * visibility maps for small relations into two pages needlessly.
	 */
	while (totalBytesRead < src_filesize)
	{
		ssize_t		bytesRead;
		char	   *old_cur;
		char	   *old_break;
		char	   *old_blkend;
		PageHeaderData pageheader;
		bool		old_lastblk;

		if ((bytesRead = FUNC6(src_fd, buffer.data, BLCKSZ)) != BLCKSZ)
		{
			if (bytesRead < 0)
				FUNC5("error while copying relation \"%s.%s\": could not read file \"%s\": %s\n",
						 schemaName, relName, fromfile, FUNC7(errno));
			else
				FUNC5("error while copying relation \"%s.%s\": partial page found in file \"%s\"\n",
						 schemaName, relName, fromfile);
		}

		totalBytesRead += BLCKSZ;
		old_lastblk = (totalBytesRead == src_filesize);

		/* Save the page header data */
		FUNC2(&pageheader, buffer.data, SizeOfPageHeaderData);

		/*
		 * These old_* variables point to old visibility map page. old_cur
		 * points to current position on old page. old_blkend points to end of
		 * old block.  old_break is the end+1 position on the old page for the
		 * data that will be transferred to the current new page.
		 */
		old_cur = buffer.data + SizeOfPageHeaderData;
		old_blkend = buffer.data + bytesRead;
		old_break = old_cur + rewriteVmBytesPerPage;

		while (old_break <= old_blkend)
		{
			char	   *new_cur;
			bool		empty = true;
			bool		old_lastpart;

			/* First, copy old page header to new page */
			FUNC2(new_vmbuf.data, &pageheader, SizeOfPageHeaderData);

			/* Rewriting the last part of the last old page? */
			old_lastpart = old_lastblk && (old_break == old_blkend);

			new_cur = new_vmbuf.data + SizeOfPageHeaderData;

			/* Process old page bytes one by one, and turn it into new page. */
			while (old_cur < old_break)
			{
				uint8		byte = *(uint8 *) old_cur;
				uint16		new_vmbits = 0;
				int			i;

				/* Generate new format bits while keeping old information */
				for (i = 0; i < BITS_PER_BYTE; i++)
				{
					if (byte & (1 << i))
					{
						empty = false;
						new_vmbits |=
							VISIBILITYMAP_ALL_VISIBLE << (BITS_PER_HEAPBLOCK * i);
					}
				}

				/* Copy new visibility map bytes to new-format page */
				new_cur[0] = (char) (new_vmbits & 0xFF);
				new_cur[1] = (char) (new_vmbits >> 8);

				old_cur++;
				new_cur += BITS_PER_HEAPBLOCK;
			}

			/* If the last part of the last page is empty, skip writing it */
			if (old_lastpart && empty)
				break;

			/* Set new checksum for visibility map page, if enabled */
			if (new_cluster.controldata.data_checksum_version != 0)
				((PageHeader) new_vmbuf.data)->pd_checksum =
					FUNC4(new_vmbuf.data, new_blkno);

			errno = 0;
			if (FUNC8(dst_fd, new_vmbuf.data, BLCKSZ) != BLCKSZ)
			{
				/* if write didn't set errno, assume problem is no disk space */
				if (errno == 0)
					errno = ENOSPC;
				FUNC5("error while copying relation \"%s.%s\": could not write file \"%s\": %s\n",
						 schemaName, relName, tofile, FUNC7(errno));
			}

			/* Advance for next new page */
			old_break += rewriteVmBytesPerPage;
			new_blkno++;
		}
	}

	/* Clean up */
	FUNC0(dst_fd);
	FUNC0(src_fd);
}