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
typedef  int Size ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MAX_CONVERSION_GROWTH ; 
 int MaxAllocHugeSize ; 
 int MaxAllocSize ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int PG_SQL_ASCII ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char const*,int,int) ; 
 scalar_t__ FUNC14 (unsigned char*,int) ; 
 int FUNC15 (char*) ; 

unsigned char *
FUNC16(unsigned char *src, int len,
						  int src_encoding, int dest_encoding)
{
	unsigned char *result;
	Oid			proc;

	if (len <= 0)
		return src;				/* empty string is always valid */

	if (src_encoding == dest_encoding)
		return src;				/* no conversion required, assume valid */

	if (dest_encoding == PG_SQL_ASCII)
		return src;				/* any string is valid in SQL_ASCII */

	if (src_encoding == PG_SQL_ASCII)
	{
		/* No conversion is possible, but we must validate the result */
		(void) FUNC13(dest_encoding, (const char *) src, len, false);
		return src;
	}

	if (!FUNC3())	/* shouldn't happen */
		FUNC7(ERROR, "cannot perform encoding conversion outside a transaction");

	proc = FUNC1(src_encoding, dest_encoding);
	if (!FUNC6(proc))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC11("default conversion function for encoding \"%s\" to \"%s\" does not exist",
						FUNC12(src_encoding),
						FUNC12(dest_encoding))));

	/*
	 * Allocate space for conversion result, being wary of integer overflow.
	 *
	 * len * MAX_CONVERSION_GROWTH is typically a vast overestimate of the
	 * required space, so it might exceed MaxAllocSize even though the result
	 * would actually fit.  We do not want to hand back a result string that
	 * exceeds MaxAllocSize, because callers might not cope gracefully --- but
	 * if we just allocate more than that, and don't use it, that's fine.
	 */
	if ((Size) len >= (MaxAllocHugeSize / (Size) MAX_CONVERSION_GROWTH))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC11("out of memory"),
				 FUNC10("String of %d bytes is too long for encoding conversion.",
						   len)));

	result = (unsigned char *)
		FUNC4(CurrentMemoryContext,
							   (Size) len * MAX_CONVERSION_GROWTH + 1);

	FUNC5(proc,
					 FUNC2(src_encoding),
					 FUNC2(dest_encoding),
					 FUNC0(src),
					 FUNC0(result),
					 FUNC2(len));

	/*
	 * If the result is large, it's worth repalloc'ing to release any extra
	 * space we asked for.  The cutoff here is somewhat arbitrary, but we
	 * *must* check when len * MAX_CONVERSION_GROWTH exceeds MaxAllocSize.
	 */
	if (len > 1000000)
	{
		Size		resultlen = FUNC15((char *) result);

		if (resultlen >= MaxAllocSize)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC11("out of memory"),
					 FUNC10("String of %d bytes is too long for encoding conversion.",
							   len)));

		result = (unsigned char *) FUNC14(result, resultlen + 1);
	}

	return result;
}