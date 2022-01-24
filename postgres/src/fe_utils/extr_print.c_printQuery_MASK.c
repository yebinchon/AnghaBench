#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int ncolumns; int nrows; char* aligns; } ;
typedef  TYPE_1__ printTableContent ;
struct TYPE_13__ {scalar_t__ numericLocale; } ;
struct TYPE_12__ {int n_translate_columns; char* nullPrint; char** footers; scalar_t__* translate_columns; TYPE_4__ topt; int /*<<< orphan*/  translate_header; int /*<<< orphan*/  title; } ;
typedef  TYPE_2__ printQueryOpt ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(const PGresult *result, const printQueryOpt *opt,
		   FILE *fout, bool is_pager, FILE *flog)
{
	printTableContent cont;
	int			i,
				r,
				c;

	if (cancel_pressed)
		return;

	FUNC14(&cont, &opt->topt, opt->title,
				   FUNC5(result), FUNC6(result));

	/* Assert caller supplied enough translate_columns[] entries */
	FUNC0(opt->translate_columns == NULL ||
		   opt->n_translate_columns >= cont.ncolumns);

	for (i = 0; i < cont.ncolumns; i++)
	{
		FUNC12(&cont, FUNC1(result, i),
							opt->translate_header,
							FUNC7(FUNC2(result, i)));
	}

	/* set cells */
	for (r = 0; r < cont.nrows; r++)
	{
		for (c = 0; c < cont.ncolumns; c++)
		{
			char	   *cell;
			bool		mustfree = false;
			bool		translate;

			if (FUNC3(result, r, c))
				cell = opt->nullPrint ? opt->nullPrint : "";
			else
			{
				cell = FUNC4(result, r, c);
				if (cont.aligns[c] == 'r' && opt->topt.numericLocale)
				{
					cell = FUNC8(cell);
					mustfree = true;
				}
			}

			translate = (opt->translate_columns && opt->translate_columns[c]);
			FUNC10(&cont, cell, translate, mustfree);
		}
	}

	/* set footers */
	if (opt->footers)
	{
		char	  **footer;

		for (footer = opt->footers; *footer; footer++)
			FUNC11(&cont, *footer);
	}

	FUNC9(&cont, fout, is_pager, flog);
	FUNC13(&cont);
}