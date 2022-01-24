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
typedef  int /*<<< orphan*/  text ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ERRCODE_SUBSTRING_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (char*,scalar_t__) ; 

__attribute__((used)) static text *
FUNC21(Datum str, int32 start, int32 length, bool length_not_specified)
{
	int32		eml = FUNC18();
	int32		S = start;		/* start position */
	int32		S1;				/* adjusted start position */
	int32		L1;				/* adjusted substring length */

	/* life is easy if the encoding max length is 1 */
	if (eml == 1)
	{
		S1 = FUNC2(S, 1);

		if (length_not_specified)	/* special case - get length to end of
									 * string */
			L1 = -1;
		else
		{
			/* end position */
			int			E = S + length;

			/*
			 * A negative value for L is the only way for the end position to
			 * be before the start. SQL99 says to throw an error.
			 */
			if (E < S)
				FUNC12(ERROR,
						(FUNC13(ERRCODE_SUBSTRING_ERROR),
						 FUNC14("negative substring length not allowed")));

			/*
			 * A zero or negative value for the end position can happen if the
			 * start was negative or one. SQL99 says to return a zero-length
			 * string.
			 */
			if (E < 1)
				return FUNC10("");

			L1 = E - S1;
		}

		/*
		 * If the start position is past the end of the string, SQL99 says to
		 * return a zero-length string -- PG_GETARG_TEXT_P_SLICE() will do
		 * that for us. Convert to zero-based starting position
		 */
		return FUNC1(str, S1 - 1, L1);
	}
	else if (eml > 1)
	{
		/*
		 * When encoding max length is > 1, we can't get LC without
		 * detoasting, so we'll grab a conservatively large slice now and go
		 * back later to do the right thing
		 */
		int32		slice_start;
		int32		slice_size;
		int32		slice_strlen;
		text	   *slice;
		int32		E1;
		int32		i;
		char	   *p;
		char	   *s;
		text	   *ret;

		/*
		 * if S is past the end of the string, the tuple toaster will return a
		 * zero-length string to us
		 */
		S1 = FUNC2(S, 1);

		/*
		 * We need to start at position zero because there is no way to know
		 * in advance which byte offset corresponds to the supplied start
		 * position.
		 */
		slice_start = 0;

		if (length_not_specified)	/* special case - get length to end of
									 * string */
			slice_size = L1 = -1;
		else
		{
			int			E = S + length;

			/*
			 * A negative value for L is the only way for the end position to
			 * be before the start. SQL99 says to throw an error.
			 */
			if (E < S)
				FUNC12(ERROR,
						(FUNC13(ERRCODE_SUBSTRING_ERROR),
						 FUNC14("negative substring length not allowed")));

			/*
			 * A zero or negative value for the end position can happen if the
			 * start was negative or one. SQL99 says to return a zero-length
			 * string.
			 */
			if (E < 1)
				return FUNC10("");

			/*
			 * if E is past the end of the string, the tuple toaster will
			 * truncate the length for us
			 */
			L1 = E - S1;

			/*
			 * Total slice size in bytes can't be any longer than the start
			 * position plus substring length times the encoding max length.
			 */
			slice_size = (S1 + L1) * eml;
		}

		/*
		 * If we're working with an untoasted source, no need to do an extra
		 * copying step.
		 */
		if (FUNC5(FUNC0(str)) ||
			FUNC6(FUNC0(str)))
			slice = FUNC1(str, slice_start, slice_size);
		else
			slice = (text *) FUNC0(str);

		/* see if we got back an empty string */
		if (FUNC9(slice) == 0)
		{
			if (slice != (text *) FUNC0(str))
				FUNC17(slice);
			return FUNC10("");
		}

		/* Now we can get the actual length of the slice in MB characters */
		slice_strlen = FUNC20(FUNC8(slice),
											FUNC9(slice));

		/*
		 * Check that the start position wasn't > slice_strlen. If so, SQL99
		 * says to return a zero-length string.
		 */
		if (S1 > slice_strlen)
		{
			if (slice != (text *) FUNC0(str))
				FUNC17(slice);
			return FUNC10("");
		}

		/*
		 * Adjust L1 and E1 now that we know the slice string length. Again
		 * remember that S1 is one based, and slice_start is zero based.
		 */
		if (L1 > -1)
			E1 = FUNC3(S1 + L1, slice_start + 1 + slice_strlen);
		else
			E1 = slice_start + 1 + slice_strlen;

		/*
		 * Find the start position in the slice; remember S1 is not zero based
		 */
		p = FUNC8(slice);
		for (i = 0; i < S1 - 1; i++)
			p += FUNC19(p);

		/* hang onto a pointer to our start position */
		s = p;

		/*
		 * Count the actual bytes used by the substring of the requested
		 * length.
		 */
		for (i = S1; i < E1; i++)
			p += FUNC19(p);

		ret = (text *) FUNC16(VARHDRSZ + (p - s));
		FUNC4(ret, VARHDRSZ + (p - s));
		FUNC15(FUNC7(ret), s, (p - s));

		if (slice != (text *) FUNC0(str))
			FUNC17(slice);

		return ret;
	}
	else
		FUNC11(ERROR, "invalid backend encoding: encoding max length < 1");

	/* not reached: suppress compiler warning */
	return NULL;
}