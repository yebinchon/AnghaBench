#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int ncolumns; char* aligns; char** headers; char const* const title; char** cells; TYPE_1__* opt; } ;
typedef  TYPE_2__ printTableContent ;
struct TYPE_4__ {int tuples_only; unsigned short border; char* tableAttr; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LONGTABLE_WHITESPACE ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	unsigned int i;
	const char *opt_table_attr = cont->opt->tableAttr;
	const char *next_opt_table_attr_char = opt_table_attr;
	const char *last_opt_table_attr_char = NULL;
	const char *const *ptr;

	if (cancel_pressed)
		return;

	if (opt_border > 3)
		opt_border = 3;

	if (cont->opt->start_table)
	{
		/* begin environment and set alignments and borders */
		FUNC1("\\begin{longtable}{", fout);

		if (opt_border >= 2)
			FUNC1("| ", fout);

		for (i = 0; i < cont->ncolumns; i++)
		{
			/* longtable supports either a width (p) or an alignment (l/r) */
			/* Are we left-justified and was a proportional width specified? */
			if (*(cont->aligns + i) == 'l' && opt_table_attr)
			{
#define LONGTABLE_WHITESPACE	" \t\n"

				/* advance over whitespace */
				next_opt_table_attr_char += FUNC5(next_opt_table_attr_char,
												   LONGTABLE_WHITESPACE);
				/* We have a value? */
				if (next_opt_table_attr_char[0] != '\0')
				{
					FUNC1("p{", fout);
					FUNC2(next_opt_table_attr_char, FUNC4(next_opt_table_attr_char,
															 LONGTABLE_WHITESPACE), 1, fout);
					last_opt_table_attr_char = next_opt_table_attr_char;
					next_opt_table_attr_char += FUNC4(next_opt_table_attr_char,
														LONGTABLE_WHITESPACE);
					FUNC1("\\textwidth}", fout);
				}
				/* use previous value */
				else if (last_opt_table_attr_char != NULL)
				{
					FUNC1("p{", fout);
					FUNC2(last_opt_table_attr_char, FUNC4(last_opt_table_attr_char,
															 LONGTABLE_WHITESPACE), 1, fout);
					FUNC1("\\textwidth}", fout);
				}
				else
					FUNC0('l', fout);
			}
			else
				FUNC0(*(cont->aligns + i), fout);

			if (opt_border != 0 && i < cont->ncolumns - 1)
				FUNC1(" | ", fout);
		}

		if (opt_border >= 2)
			FUNC1(" |", fout);

		FUNC1("}\n", fout);

		/* print headers */
		if (!opt_tuples_only)
		{
			/* firsthead */
			if (opt_border >= 2)
				FUNC1("\\toprule\n", fout);
			for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
			{
				if (i != 0)
					FUNC1(" & ", fout);
				FUNC1("\\small\\textbf{\\textit{", fout);
				FUNC3(*ptr, fout);
				FUNC1("}}", fout);
			}
			FUNC1(" \\\\\n", fout);
			FUNC1("\\midrule\n\\endfirsthead\n", fout);

			/* secondary heads */
			if (opt_border >= 2)
				FUNC1("\\toprule\n", fout);
			for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
			{
				if (i != 0)
					FUNC1(" & ", fout);
				FUNC1("\\small\\textbf{\\textit{", fout);
				FUNC3(*ptr, fout);
				FUNC1("}}", fout);
			}
			FUNC1(" \\\\\n", fout);
			/* If the line under the row already appeared, don't do another */
			if (opt_border != 3)
				FUNC1("\\midrule\n", fout);
			FUNC1("\\endhead\n", fout);

			/* table name, caption? */
			if (!opt_tuples_only && cont->title)
			{
				/* Don't output if we are printing a line under each row */
				if (opt_border == 2)
					FUNC1("\\bottomrule\n", fout);
				FUNC1("\\caption[", fout);
				FUNC3(cont->title, fout);
				FUNC1(" (Continued)]{", fout);
				FUNC3(cont->title, fout);
				FUNC1("}\n\\endfoot\n", fout);
				if (opt_border == 2)
					FUNC1("\\bottomrule\n", fout);
				FUNC1("\\caption[", fout);
				FUNC3(cont->title, fout);
				FUNC1("]{", fout);
				FUNC3(cont->title, fout);
				FUNC1("}\n\\endlastfoot\n", fout);
			}
			/* output bottom table line? */
			else if (opt_border >= 2)
			{
				FUNC1("\\bottomrule\n\\endfoot\n", fout);
				FUNC1("\\bottomrule\n\\endlastfoot\n", fout);
			}
		}
	}

	/* print cells */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		/* Add a line under each row? */
		if (i != 0 && i % cont->ncolumns != 0)
			FUNC1("\n&\n", fout);
		FUNC1("\\raggedright{", fout);
		FUNC3(*ptr, fout);
		FUNC0('}', fout);
		if ((i + 1) % cont->ncolumns == 0)
		{
			FUNC1(" \\tabularnewline\n", fout);
			if (opt_border == 3)
				FUNC1(" \\hline\n", fout);
		}
		if (cancel_pressed)
			break;
	}

	if (cont->opt->stop_table)
		FUNC1("\\end{longtable}\n", fout);
}