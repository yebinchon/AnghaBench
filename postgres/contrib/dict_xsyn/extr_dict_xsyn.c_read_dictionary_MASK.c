#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsearch_readline_state ;
struct TYPE_7__ {int len; TYPE_1__* syn; int /*<<< orphan*/  matchsynonyms; scalar_t__ matchorig; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Syn ;
typedef  TYPE_2__ DictSyn ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  compare_syn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char**) ; 
 char* FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(DictSyn *d, const char *filename)
{
	char	   *real_filename = FUNC4(filename, "rules");
	tsearch_readline_state trst;
	char	   *line;
	int			cur = 0;

	if (!FUNC13(&trst, real_filename))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC2("could not open synonym file \"%s\": %m",
						real_filename)));

	while ((line = FUNC12(&trst)) != NULL)
	{
		char	   *value;
		char	   *key;
		char	   *pos;
		char	   *end;

		if (*line == '\0')
			continue;

		value = FUNC5(line);
		FUNC7(line);

		pos = value;
		while ((key = FUNC3(pos, &end)) != NULL)
		{
			/* Enlarge syn structure if full */
			if (cur == d->len)
			{
				d->len = (d->len > 0) ? 2 * d->len : 16;
				if (d->syn)
					d->syn = (Syn *) FUNC11(d->syn, sizeof(Syn) * d->len);
				else
					d->syn = (Syn *) FUNC6(sizeof(Syn) * d->len);
			}

			/* Save first word only if we will match it */
			if (pos != value || d->matchorig)
			{
				d->syn[cur].key = FUNC8(key, end - key);
				d->syn[cur].value = FUNC9(value);

				cur++;
			}

			pos = end;

			/* Don't bother scanning synonyms if we will not match them */
			if (!d->matchsynonyms)
				break;
		}

		FUNC7(value);
	}

	FUNC14(&trst);

	d->len = cur;
	if (cur > 1)
		FUNC10(d->syn, d->len, sizeof(Syn), compare_syn);

	FUNC7(real_filename);
}