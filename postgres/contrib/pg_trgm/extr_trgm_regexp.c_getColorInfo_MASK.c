#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__ trgm_mb_char ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pg_wchar ;
struct TYPE_7__ {int ncolors; TYPE_3__* colorInfo; } ;
typedef  TYPE_2__ TrgmNFA ;
struct TYPE_8__ {int expandable; int containsNonWord; scalar_t__ wordCharsCount; TYPE_1__* wordChars; } ;
typedef  TYPE_3__ TrgmColorInfo ;

/* Variables and functions */
 int COLOR_COUNT_LIMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(regex_t *regex, TrgmNFA *trgmNFA)
{
	int			colorsCount = FUNC7(regex);
	int			i;

	trgmNFA->ncolors = colorsCount;
	trgmNFA->colorInfo = (TrgmColorInfo *)
		FUNC3(colorsCount * sizeof(TrgmColorInfo));

	/*
	 * Loop over colors, filling TrgmColorInfo about each.
	 */
	for (i = 0; i < colorsCount; i++)
	{
		TrgmColorInfo *colorInfo = &trgmNFA->colorInfo[i];
		int			charsCount = FUNC6(regex, i);
		pg_wchar   *chars;
		int			j;

		if (charsCount < 0 || charsCount > COLOR_COUNT_LIMIT)
		{
			/* Non expandable, or too large to work with */
			colorInfo->expandable = false;
			continue;
		}

		colorInfo->expandable = true;
		colorInfo->containsNonWord = false;
		colorInfo->wordChars = (trgm_mb_char *)
			FUNC2(sizeof(trgm_mb_char) * charsCount);
		colorInfo->wordCharsCount = 0;

		/* Extract all the chars in this color */
		chars = (pg_wchar *) FUNC2(sizeof(pg_wchar) * charsCount);
		FUNC5(regex, i, chars, charsCount);

		/*
		 * Convert characters back to multibyte form, and save only those that
		 * are word characters.  Set "containsNonWord" if any non-word
		 * character.  (Note: it'd probably be nicer to keep the chars in
		 * pg_wchar format for now, but ISWORDCHR wants to see multibyte.)
		 */
		for (j = 0; j < charsCount; j++)
		{
			trgm_mb_char c;

			if (!FUNC1(chars[j], &c))
				continue;		/* ok to ignore it altogether */
			if (FUNC0(c.bytes))
				colorInfo->wordChars[colorInfo->wordCharsCount++] = c;
			else
				colorInfo->containsNonWord = true;
		}

		FUNC4(chars);
	}
}