#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_9__ {int rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errMsg ;
struct TYPE_10__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERROR ; 
 int REGEXP_REPLACE_BACKREF_CNT ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 size_t FUNC16 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 

text *
FUNC19(text *src_text, void *regexp,
					text *replace_text, bool glob)
{
	text	   *ret_text;
	regex_t    *re = (regex_t *) regexp;
	int			src_text_len = FUNC3(src_text);
	StringInfoData buf;
	regmatch_t	pmatch[REGEXP_REPLACE_BACKREF_CNT];
	pg_wchar   *data;
	size_t		data_len;
	int			search_start;
	int			data_pos;
	char	   *start_ptr;
	bool		have_escape;

	FUNC13(&buf);

	/* Convert data string to wide characters. */
	data = (pg_wchar *) FUNC14((src_text_len + 1) * sizeof(pg_wchar));
	data_len = FUNC16(FUNC1(src_text), data, src_text_len);

	/* Check whether replace_text has escape char. */
	have_escape = FUNC8(replace_text);

	/* start_ptr points to the data_pos'th character of src_text */
	start_ptr = (char *) FUNC1(src_text);
	data_pos = 0;

	search_start = 0;
	while (search_start <= data_len)
	{
		int			regexec_result;

		FUNC0();

		regexec_result = FUNC18(re,
									data,
									data_len,
									search_start,
									NULL,	/* no details */
									REGEXP_REPLACE_BACKREF_CNT,
									pmatch,
									0);

		if (regexec_result == REG_NOMATCH)
			break;

		if (regexec_result != REG_OKAY)
		{
			char		errMsg[100];

			FUNC0();
			FUNC17(regexec_result, re, errMsg, sizeof(errMsg));
			FUNC10(ERROR,
					(FUNC11(ERRCODE_INVALID_REGULAR_EXPRESSION),
					 FUNC12("regular expression failed: %s", errMsg)));
		}

		/*
		 * Copy the text to the left of the match position.  Note we are given
		 * character not byte indexes.
		 */
		if (pmatch[0].rm_so - data_pos > 0)
		{
			int			chunk_len;

			chunk_len = FUNC7(start_ptr,
										   pmatch[0].rm_so - data_pos);
			FUNC4(&buf, start_ptr, chunk_len);

			/*
			 * Advance start_ptr over that text, to avoid multiple rescans of
			 * it if the replace_text contains multiple back-references.
			 */
			start_ptr += chunk_len;
			data_pos = pmatch[0].rm_so;
		}

		/*
		 * Copy the replace_text. Process back references when the
		 * replace_text has escape characters.
		 */
		if (have_escape)
			FUNC5(&buf, replace_text, pmatch,
										 start_ptr, data_pos);
		else
			FUNC6(&buf, replace_text);

		/* Advance start_ptr and data_pos over the matched text. */
		start_ptr += FUNC7(start_ptr,
										pmatch[0].rm_eo - data_pos);
		data_pos = pmatch[0].rm_eo;

		/*
		 * When global option is off, replace the first instance only.
		 */
		if (!glob)
			break;

		/*
		 * Advance search position.  Normally we start the next search at the
		 * end of the previous match; but if the match was of zero length, we
		 * have to advance by one character, or we'd just find the same match
		 * again.
		 */
		search_start = data_pos;
		if (pmatch[0].rm_so == pmatch[0].rm_eo)
			search_start++;
	}

	/*
	 * Copy the text to the right of the last match.
	 */
	if (data_pos < data_len)
	{
		int			chunk_len;

		chunk_len = ((char *) src_text + FUNC2(src_text)) - start_ptr;
		FUNC4(&buf, start_ptr, chunk_len);
	}

	ret_text = FUNC9(buf.data, buf.len);
	FUNC15(buf.data);
	FUNC15(data);

	return ret_text;
}