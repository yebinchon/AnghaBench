#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  TYPE_1__* pg_locale_t ;
struct TYPE_6__ {int is_multibyte; int is_multibyte_char_in_char; char* str2; int len1; int len2; int skiptablemask; int* skiptable; scalar_t__ refpos; void* str1; void* refpoint; int /*<<< orphan*/ * last_match; } ;
typedef  TYPE_2__ TextPositionState ;
struct TYPE_5__ {int /*<<< orphan*/  deterministic; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ PG_UTF8 ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 () ; 
 TYPE_1__* FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(text *t1, text *t2, Oid collid, TextPositionState *state)
{
	int			len1 = FUNC3(t1);
	int			len2 = FUNC3(t2);
	pg_locale_t mylocale = 0;

	FUNC4(collid);

	if (!FUNC8(collid) && collid != DEFAULT_COLLATION_OID)
		mylocale = FUNC10(collid);

	if (mylocale && !mylocale->deterministic)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC7("nondeterministic collations are not supported for substring searches")));

	FUNC0(len1 > 0);
	FUNC0(len2 > 0);

	/*
	 * Even with a multi-byte encoding, we perform the search using the raw
	 * byte sequence, ignoring multibyte issues.  For UTF-8, that works fine,
	 * because in UTF-8 the byte sequence of one character cannot contain
	 * another character.  For other multi-byte encodings, we do the search
	 * initially as a simple byte search, ignoring multibyte issues, but
	 * verify afterwards that the match we found is at a character boundary,
	 * and continue the search if it was a false match.
	 */
	if (FUNC9() == 1)
	{
		state->is_multibyte = false;
		state->is_multibyte_char_in_char = false;
	}
	else if (FUNC1() == PG_UTF8)
	{
		state->is_multibyte = true;
		state->is_multibyte_char_in_char = false;
	}
	else
	{
		state->is_multibyte = true;
		state->is_multibyte_char_in_char = true;
	}

	state->str1 = FUNC2(t1);
	state->str2 = FUNC2(t2);
	state->len1 = len1;
	state->len2 = len2;
	state->last_match = NULL;
	state->refpoint = state->str1;
	state->refpos = 0;

	/*
	 * Prepare the skip table for Boyer-Moore-Horspool searching.  In these
	 * notes we use the terminology that the "haystack" is the string to be
	 * searched (t1) and the "needle" is the pattern being sought (t2).
	 *
	 * If the needle is empty or bigger than the haystack then there is no
	 * point in wasting cycles initializing the table.  We also choose not to
	 * use B-M-H for needles of length 1, since the skip table can't possibly
	 * save anything in that case.
	 */
	if (len1 >= len2 && len2 > 1)
	{
		int			searchlength = len1 - len2;
		int			skiptablemask;
		int			last;
		int			i;
		const char *str2 = state->str2;

		/*
		 * First we must determine how much of the skip table to use.  The
		 * declaration of TextPositionState allows up to 256 elements, but for
		 * short search problems we don't really want to have to initialize so
		 * many elements --- it would take too long in comparison to the
		 * actual search time.  So we choose a useful skip table size based on
		 * the haystack length minus the needle length.  The closer the needle
		 * length is to the haystack length the less useful skipping becomes.
		 *
		 * Note: since we use bit-masking to select table elements, the skip
		 * table size MUST be a power of 2, and so the mask must be 2^N-1.
		 */
		if (searchlength < 16)
			skiptablemask = 3;
		else if (searchlength < 64)
			skiptablemask = 7;
		else if (searchlength < 128)
			skiptablemask = 15;
		else if (searchlength < 512)
			skiptablemask = 31;
		else if (searchlength < 2048)
			skiptablemask = 63;
		else if (searchlength < 4096)
			skiptablemask = 127;
		else
			skiptablemask = 255;
		state->skiptablemask = skiptablemask;

		/*
		 * Initialize the skip table.  We set all elements to the needle
		 * length, since this is the correct skip distance for any character
		 * not found in the needle.
		 */
		for (i = 0; i <= skiptablemask; i++)
			state->skiptable[i] = len2;

		/*
		 * Now examine the needle.  For each character except the last one,
		 * set the corresponding table element to the appropriate skip
		 * distance.  Note that when two characters share the same skip table
		 * entry, the one later in the needle must determine the skip
		 * distance.
		 */
		last = len2 - 1;

		for (i = 0; i < last; i++)
			state->skiptable[(unsigned char) str2[i] & skiptablemask] = last - i;
	}
}