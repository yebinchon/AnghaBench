#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rawline ;
struct TYPE_9__ {int line_num; char* err_msg; int /*<<< orphan*/  raw_line; struct TYPE_9__* fields; } ;
typedef  TYPE_1__ TokenizedLine ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ List ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int MAX_LINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* NIL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (char const*,char**,int,char**) ; 
 scalar_t__ FUNC12 (int) ; 
 char* FUNC13 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static MemoryContext
FUNC17(const char *filename, FILE *file, List **tok_lines, int elevel)
{
	int			line_number = 1;
	MemoryContext linecxt;
	MemoryContext oldcxt;

	linecxt = FUNC0(CurrentMemoryContext,
									"tokenize_file",
									ALLOCSET_SMALL_SIZES);
	oldcxt = FUNC1(linecxt);

	*tok_lines = NIL;

	while (!FUNC7(file) && !FUNC8(file))
	{
		char		rawline[MAX_LINE];
		char	   *lineptr;
		List	   *current_line = NIL;
		char	   *err_msg = NULL;

		if (!FUNC9(rawline, sizeof(rawline), file))
		{
			int			save_errno = errno;

			if (!FUNC8(file))
				break;			/* normal EOF */
			/* I/O error! */
			FUNC2(elevel,
					(FUNC4(),
					 FUNC6("could not read file \"%s\": %m", filename)));
			err_msg = FUNC13("could not read file \"%s\": %s",
							   filename, FUNC15(save_errno));
			rawline[0] = '\0';
		}
		if (FUNC16(rawline) == MAX_LINE - 1)
		{
			/* Line too long! */
			FUNC2(elevel,
					(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC6("authentication file line too long"),
					 FUNC5("line %d of configuration file \"%s\"",
								line_number, filename)));
			err_msg = "authentication file line too long";
		}

		/* Strip trailing linebreak from rawline */
		lineptr = rawline + FUNC16(rawline) - 1;
		while (lineptr >= rawline && (*lineptr == '\n' || *lineptr == '\r'))
			*lineptr-- = '\0';

		/* Parse fields */
		lineptr = rawline;
		while (*lineptr && err_msg == NULL)
		{
			List	   *current_field;

			current_field = FUNC11(filename, &lineptr,
											  elevel, &err_msg);
			/* add field to line, unless we are at EOL or comment start */
			if (current_field != NIL)
				current_line = FUNC10(current_line, current_field);
		}

		/* Reached EOL; emit line to TokenizedLine list unless it's boring */
		if (current_line != NIL || err_msg != NULL)
		{
			TokenizedLine *tok_line;

			tok_line = (TokenizedLine *) FUNC12(sizeof(TokenizedLine));
			tok_line->fields = current_line;
			tok_line->line_num = line_number;
			tok_line->raw_line = FUNC14(rawline);
			tok_line->err_msg = err_msg;
			*tok_lines = FUNC10(*tok_lines, tok_line);
		}

		line_number++;
	}

	FUNC1(oldcxt);

	return linecxt;
}