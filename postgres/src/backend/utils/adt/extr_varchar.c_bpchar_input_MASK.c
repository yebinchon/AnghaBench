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
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  BpChar ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_STRING_DATA_RIGHT_TRUNCATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,size_t) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 size_t FUNC8 (char const*,size_t,size_t) ; 
 size_t FUNC9 (char const*,size_t) ; 

__attribute__((used)) static BpChar *
FUNC10(const char *s, size_t len, int32 atttypmod)
{
	BpChar	   *result;
	char	   *r;
	size_t		maxlen;

	/* If typmod is -1 (or invalid), use the actual string length */
	if (atttypmod < (int32) VARHDRSZ)
		maxlen = len;
	else
	{
		size_t		charlen;	/* number of CHARACTERS in the input */

		maxlen = atttypmod - VARHDRSZ;
		charlen = FUNC9(s, len);
		if (charlen > maxlen)
		{
			/* Verify that extra characters are spaces, and clip them off */
			size_t		mbmaxlen = FUNC8(s, len, maxlen);
			size_t		j;

			/*
			 * at this point, len is the actual BYTE length of the input
			 * string, maxlen is the max number of CHARACTERS allowed for this
			 * bpchar type, mbmaxlen is the length in BYTES of those chars.
			 */
			for (j = mbmaxlen; j < len; j++)
			{
				if (s[j] != ' ')
					FUNC2(ERROR,
							(FUNC3(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
							 FUNC4("value too long for type character(%d)",
									(int) maxlen)));
			}

			/*
			 * Now we set maxlen to the necessary byte length, not the number
			 * of CHARACTERS!
			 */
			maxlen = len = mbmaxlen;
		}
		else
		{
			/*
			 * Now we set maxlen to the necessary byte length, not the number
			 * of CHARACTERS!
			 */
			maxlen = len + (maxlen - charlen);
		}
	}

	result = (BpChar *) FUNC7(maxlen + VARHDRSZ);
	FUNC0(result, maxlen + VARHDRSZ);
	r = FUNC1(result);
	FUNC5(r, s, len);

	/* blank pad the string if necessary */
	if (maxlen > len)
		FUNC6(r + len, ' ', maxlen - len);

	return result;
}