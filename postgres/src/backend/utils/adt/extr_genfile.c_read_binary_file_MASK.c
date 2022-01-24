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
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  bytea ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MaxAllocSize ; 
 int /*<<< orphan*/  PG_BINARY_R ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (char const*,struct stat*) ; 

__attribute__((used)) static bytea *
FUNC13(const char *filename, int64 seek_offset, int64 bytes_to_read,
				 bool missing_ok)
{
	bytea	   *buf;
	size_t		nbytes;
	FILE	   *file;

	if (bytes_to_read < 0)
	{
		if (seek_offset < 0)
			bytes_to_read = -seek_offset;
		else
		{
			struct stat fst;

			if (FUNC12(filename, &fst) < 0)
			{
				if (missing_ok && errno == ENOENT)
					return NULL;
				else
					FUNC4(ERROR,
							(FUNC6(),
							 FUNC7("could not stat file \"%s\": %m", filename)));
			}

			bytes_to_read = fst.st_size - seek_offset;
		}
	}

	/* not sure why anyone thought that int64 length was a good idea */
	if (bytes_to_read > (MaxAllocSize - VARHDRSZ))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("requested length too large")));

	if ((file = FUNC0(filename, PG_BINARY_R)) == NULL)
	{
		if (missing_ok && errno == ENOENT)
			return NULL;
		else
			FUNC4(ERROR,
					(FUNC6(),
					 FUNC7("could not open file \"%s\" for reading: %m",
							filename)));
	}

	if (FUNC10(file, (off_t) seek_offset,
			   (seek_offset >= 0) ? SEEK_SET : SEEK_END) != 0)
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not seek in file \"%s\": %m", filename)));

	buf = (bytea *) FUNC11((Size) bytes_to_read + VARHDRSZ);

	nbytes = FUNC9(FUNC3(buf), 1, (size_t) bytes_to_read, file);

	if (FUNC8(file))
		FUNC4(ERROR,
				(FUNC6(),
				 FUNC7("could not read file \"%s\": %m", filename)));

	FUNC2(buf, nbytes + VARHDRSZ);

	FUNC1(file);

	return buf;
}