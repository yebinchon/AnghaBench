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
typedef  int uint32 ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  pg_crc32c ;
typedef  int /*<<< orphan*/  TwoPhaseRecordOnDisk ;
struct TYPE_2__ {scalar_t__ magic; int total_len; } ;
typedef  TYPE_1__ TwoPhaseFileHeader ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int MAXPGPATH ; 
 int MaxAllocSize ; 
 int O_RDONLY ; 
 int FUNC6 (char*,int) ; 
 int PG_BINARY ; 
 scalar_t__ TWOPHASE_MAGIC ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_TWOPHASE_FILE_READ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC13 (int,struct stat*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int,char*,int) ; 

__attribute__((used)) static char *
FUNC18(TransactionId xid, bool missing_ok)
{
	char		path[MAXPGPATH];
	char	   *buf;
	TwoPhaseFileHeader *hdr;
	int			fd;
	struct stat stat;
	uint32		crc_offset;
	pg_crc32c	calc_crc,
				file_crc;
	int			r;

	FUNC7(path, xid);

	fd = FUNC6(path, O_RDONLY | PG_BINARY);
	if (fd < 0)
	{
		if (missing_ok && errno == ENOENT)
			return NULL;

		FUNC8(ERROR,
				(FUNC10(),
				 FUNC11("could not open file \"%s\": %m", path)));
	}

	/*
	 * Check file length.  We can determine a lower bound pretty easily. We
	 * set an upper bound to avoid palloc() failure on a corrupt file, though
	 * we can't guarantee that we won't get an out of memory error anyway,
	 * even on a valid file.
	 */
	if (FUNC13(fd, &stat))
		FUNC8(ERROR,
				(FUNC10(),
				 FUNC11("could not stat file \"%s\": %m", path)));

	if (stat.st_size < (FUNC5(sizeof(TwoPhaseFileHeader)) +
						FUNC5(sizeof(TwoPhaseRecordOnDisk)) +
						sizeof(pg_crc32c)) ||
		stat.st_size > MaxAllocSize)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC12("incorrect size of file \"%s\": %zu byte",
							   "incorrect size of file \"%s\": %zu bytes",
							   (Size) stat.st_size, path,
							   (Size) stat.st_size)));

	crc_offset = stat.st_size - sizeof(pg_crc32c);
	if (crc_offset != FUNC5(crc_offset))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC11("incorrect alignment of CRC offset for file \"%s\"",
						path)));

	/*
	 * OK, slurp in the file.
	 */
	buf = (char *) FUNC14(stat.st_size);

	FUNC16(WAIT_EVENT_TWOPHASE_FILE_READ);
	r = FUNC17(fd, buf, stat.st_size);
	if (r != stat.st_size)
	{
		if (r < 0)
			FUNC8(ERROR,
					(FUNC10(),
					 FUNC11("could not read file \"%s\": %m", path)));
		else
			FUNC8(ERROR,
					(FUNC11("could not read file \"%s\": read %d of %zu",
							path, r, (Size) stat.st_size)));
	}

	FUNC15();

	if (FUNC1(fd) != 0)
		FUNC8(ERROR,
				(FUNC10(),
				 FUNC11("could not close file \"%s\": %m", path)));

	hdr = (TwoPhaseFileHeader *) buf;
	if (hdr->magic != TWOPHASE_MAGIC)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC11("invalid magic number stored in file \"%s\"",
						path)));

	if (hdr->total_len != stat.st_size)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC11("invalid size stored in file \"%s\"",
						path)));

	FUNC4(calc_crc);
	FUNC0(calc_crc, buf, crc_offset);
	FUNC3(calc_crc);

	file_crc = *((pg_crc32c *) (buf + crc_offset));

	if (!FUNC2(calc_crc, file_crc))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DATA_CORRUPTED),
				 FUNC11("calculated CRC checksum does not match value stored in file \"%s\"",
						path)));

	return buf;
}