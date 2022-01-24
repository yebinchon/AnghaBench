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
typedef  int pg_wchar ;
typedef  int /*<<< orphan*/  pg_saslprep_rc ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCat_codepoint_ranges ; 
 scalar_t__ MAX_PASSWORD_LENGTH ; 
 int /*<<< orphan*/  RandALCat_codepoint_ranges ; 
 int /*<<< orphan*/  SASLPREP_INVALID_UTF8 ; 
 int /*<<< orphan*/  SASLPREP_OOM ; 
 int /*<<< orphan*/  SASLPREP_PROHIBITED ; 
 int /*<<< orphan*/  SASLPREP_SUCCESS ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  commonly_mapped_to_nothing_ranges ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  non_ascii_space_ranges ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  prohibited_output_ranges ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  unassigned_codepoint_ranges ; 
 int* FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int,unsigned char*) ; 
 int FUNC14 (unsigned char*) ; 

pg_saslprep_rc
FUNC15(const char *input, char **output)
{
	pg_wchar   *input_chars = NULL;
	pg_wchar   *output_chars = NULL;
	int			input_size;
	char	   *result;
	int			result_size;
	int			count;
	int			i;
	bool		contains_RandALCat;
	unsigned char *p;
	pg_wchar   *wp;

	/* Ensure we return *output as NULL on failure */
	*output = NULL;

	/* Check that the password isn't stupendously long */
	if (FUNC11(input) > MAX_PASSWORD_LENGTH)
	{
#ifndef FRONTEND
		FUNC5(ERROR,
				(FUNC6(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC7("password too long")));
#else
		return SASLPREP_OOM;
#endif
	}

	/*
	 * Quick check if the input is pure ASCII.  An ASCII string requires no
	 * further processing.
	 */
	if (FUNC8(input))
	{
		*output = FUNC4(input);
		if (!(*output))
			goto oom;
		return SASLPREP_SUCCESS;
	}

	/*
	 * Convert the input from UTF-8 to an array of Unicode codepoints.
	 *
	 * This also checks that the input is a legal UTF-8 string.
	 */
	input_size = FUNC9(input);
	if (input_size < 0)
		return SASLPREP_INVALID_UTF8;

	input_chars = FUNC0((input_size + 1) * sizeof(pg_wchar));
	if (!input_chars)
		goto oom;

	p = (unsigned char *) input;
	for (i = 0; i < input_size; i++)
	{
		input_chars[i] = FUNC14(p);
		p += FUNC10(p);
	}
	input_chars[i] = (pg_wchar) '\0';

	/*
	 * The steps below correspond to the steps listed in [RFC3454], Section
	 * "2. Preparation Overview"
	 */

	/*
	 * 1) Map -- For each character in the input, check if it has a mapping
	 * and, if so, replace it with its mapping.
	 */
	count = 0;
	for (i = 0; i < input_size; i++)
	{
		pg_wchar	code = input_chars[i];

		if (FUNC3(code, non_ascii_space_ranges))
			input_chars[count++] = 0x0020;
		else if (FUNC3(code, commonly_mapped_to_nothing_ranges))
		{
			/* map to nothing */
		}
		else
			input_chars[count++] = code;
	}
	input_chars[count] = (pg_wchar) '\0';
	input_size = count;

	if (input_size == 0)
		goto prohibited;		/* don't allow empty password */

	/*
	 * 2) Normalize -- Normalize the result of step 1 using Unicode
	 * normalization.
	 */
	output_chars = FUNC12(input_chars);
	if (!output_chars)
		goto oom;

	/*
	 * 3) Prohibit -- Check for any characters that are not allowed in the
	 * output.  If any are found, return an error.
	 */
	for (i = 0; i < input_size; i++)
	{
		pg_wchar	code = input_chars[i];

		if (FUNC3(code, prohibited_output_ranges))
			goto prohibited;
		if (FUNC3(code, unassigned_codepoint_ranges))
			goto prohibited;
	}

	/*
	 * 4) Check bidi -- Possibly check for right-to-left characters, and if
	 * any are found, make sure that the whole string satisfies the
	 * requirements for bidirectional strings.  If the string does not satisfy
	 * the requirements for bidirectional strings, return an error.
	 *
	 * [RFC3454], Section "6. Bidirectional Characters" explains in more
	 * detail what that means:
	 *
	 * "In any profile that specifies bidirectional character handling, all
	 * three of the following requirements MUST be met:
	 *
	 * 1) The characters in section 5.8 MUST be prohibited.
	 *
	 * 2) If a string contains any RandALCat character, the string MUST NOT
	 * contain any LCat character.
	 *
	 * 3) If a string contains any RandALCat character, a RandALCat character
	 * MUST be the first character of the string, and a RandALCat character
	 * MUST be the last character of the string."
	 */
	contains_RandALCat = false;
	for (i = 0; i < input_size; i++)
	{
		pg_wchar	code = input_chars[i];

		if (FUNC3(code, RandALCat_codepoint_ranges))
		{
			contains_RandALCat = true;
			break;
		}
	}

	if (contains_RandALCat)
	{
		pg_wchar	first = input_chars[0];
		pg_wchar	last = input_chars[input_size - 1];

		for (i = 0; i < input_size; i++)
		{
			pg_wchar	code = input_chars[i];

			if (FUNC3(code, LCat_codepoint_ranges))
				goto prohibited;
		}

		if (!FUNC3(first, RandALCat_codepoint_ranges) ||
			!FUNC3(last, RandALCat_codepoint_ranges))
			goto prohibited;
	}

	/*
	 * Finally, convert the result back to UTF-8.
	 */
	result_size = 0;
	for (wp = output_chars; *wp; wp++)
	{
		unsigned char buf[4];

		FUNC13(*wp, buf);
		result_size += FUNC10(buf);
	}

	result = FUNC0(result_size + 1);
	if (!result)
		goto oom;

	/*
	 * There are no error exits below here, so the error exit paths don't need
	 * to worry about possibly freeing "result".
	 */
	p = (unsigned char *) result;
	for (wp = output_chars; *wp; wp++)
	{
		FUNC13(*wp, p);
		p += FUNC10(p);
	}
	FUNC1((char *) p == result + result_size);
	*p = '\0';

	FUNC2(input_chars);
	FUNC2(output_chars);

	*output = result;
	return SASLPREP_SUCCESS;

prohibited:
	if (input_chars)
		FUNC2(input_chars);
	if (output_chars)
		FUNC2(output_chars);

	return SASLPREP_PROHIBITED;

oom:
	if (input_chars)
		FUNC2(input_chars);
	if (output_chars)
		FUNC2(output_chars);

	return SASLPREP_OOM;
}