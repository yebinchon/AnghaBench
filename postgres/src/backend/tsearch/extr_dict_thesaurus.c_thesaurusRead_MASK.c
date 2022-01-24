#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ uint16 ;
typedef  int /*<<< orphan*/  tsearch_readline_state ;
struct TYPE_5__ {scalar_t__ nsubst; } ;
typedef  TYPE_1__ DictThesaurus ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int TR_INLEX ; 
 int TR_INSUBS ; 
 int TR_WAITLEX ; 
 int TR_WAITSUBS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(const char *filename, DictThesaurus *d)
{
	tsearch_readline_state trst;
	uint32		idsubst = 0;
	bool		useasis = false;
	char	   *line;

	filename = FUNC5(filename, "ths");
	if (!FUNC12(&trst, filename))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC4("could not open thesaurus file \"%s\": %m",
						filename)));

	while ((line = FUNC11(&trst)) != NULL)
	{
		char	   *ptr;
		int			state = TR_WAITLEX;
		char	   *beginwrd = NULL;
		uint32		posinsubst = 0;
		uint32		nwrd = 0;

		ptr = line;

		/* is it a comment? */
		while (*ptr && FUNC10(ptr))
			ptr += FUNC8(ptr);

		if (FUNC9(ptr, '#') || *ptr == '\0' ||
			FUNC9(ptr, '\n') || FUNC9(ptr, '\r'))
		{
			FUNC7(line);
			continue;
		}

		while (*ptr)
		{
			if (state == TR_WAITLEX)
			{
				if (FUNC9(ptr, ':'))
				{
					if (posinsubst == 0)
						FUNC2(ERROR,
								(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
								 FUNC4("unexpected delimiter")));
					state = TR_WAITSUBS;
				}
				else if (!FUNC10(ptr))
				{
					beginwrd = ptr;
					state = TR_INLEX;
				}
			}
			else if (state == TR_INLEX)
			{
				if (FUNC9(ptr, ':'))
				{
					FUNC6(d, beginwrd, ptr, idsubst, posinsubst++);
					state = TR_WAITSUBS;
				}
				else if (FUNC10(ptr))
				{
					FUNC6(d, beginwrd, ptr, idsubst, posinsubst++);
					state = TR_WAITLEX;
				}
			}
			else if (state == TR_WAITSUBS)
			{
				if (FUNC9(ptr, '*'))
				{
					useasis = true;
					state = TR_INSUBS;
					beginwrd = ptr + FUNC8(ptr);
				}
				else if (FUNC9(ptr, '\\'))
				{
					useasis = false;
					state = TR_INSUBS;
					beginwrd = ptr + FUNC8(ptr);
				}
				else if (!FUNC10(ptr))
				{
					useasis = false;
					beginwrd = ptr;
					state = TR_INSUBS;
				}
			}
			else if (state == TR_INSUBS)
			{
				if (FUNC10(ptr))
				{
					if (ptr == beginwrd)
						FUNC2(ERROR,
								(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
								 FUNC4("unexpected end of line or lexeme")));
					FUNC0(d, beginwrd, ptr, idsubst, nwrd++, posinsubst, useasis);
					state = TR_WAITSUBS;
				}
			}
			else
				FUNC1(ERROR, "unrecognized thesaurus state: %d", state);

			ptr += FUNC8(ptr);
		}

		if (state == TR_INSUBS)
		{
			if (ptr == beginwrd)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC4("unexpected end of line or lexeme")));
			FUNC0(d, beginwrd, ptr, idsubst, nwrd++, posinsubst, useasis);
		}

		idsubst++;

		if (!(nwrd && posinsubst))
			FUNC2(ERROR,
					(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC4("unexpected end of line")));

		/*
		 * Note: currently, tsearch_readline can't return lines exceeding 4KB,
		 * so overflow of the word counts is impossible.  But that may not
		 * always be true, so let's check.
		 */
		if (nwrd != (uint16) nwrd || posinsubst != (uint16) posinsubst)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC4("too many lexemes in thesaurus entry")));

		FUNC7(line);
	}

	d->nsubst = idsubst;

	FUNC13(&trst);
}