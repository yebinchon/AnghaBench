#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char const* const data; struct TYPE_8__* next; } ;
typedef  TYPE_2__ printTableFooter ;
struct TYPE_9__ {char const* const title; unsigned int ncolumns; char* aligns; char** headers; char** cells; TYPE_1__* opt; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_7__ {int tuples_only; unsigned short border; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cancel_pressed ; 
 TYPE_2__* FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	unsigned int i;
	const char *const *ptr;

	if (cancel_pressed)
		return;

	if (opt_border > 3)
		opt_border = 3;

	if (cont->opt->start_table)
	{
		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC2("\\begin{center}\n", fout);
			FUNC3(cont->title, fout);
			FUNC2("\n\\end{center}\n\n", fout);
		}

		/* begin environment and set alignments and borders */
		FUNC2("\\begin{tabular}{", fout);

		if (opt_border >= 2)
			FUNC2("| ", fout);
		for (i = 0; i < cont->ncolumns; i++)
		{
			FUNC1(*(cont->aligns + i), fout);
			if (opt_border != 0 && i < cont->ncolumns - 1)
				FUNC2(" | ", fout);
		}
		if (opt_border >= 2)
			FUNC2(" |", fout);

		FUNC2("}\n", fout);

		if (!opt_tuples_only && opt_border >= 2)
			FUNC2("\\hline\n", fout);

		/* print headers */
		if (!opt_tuples_only)
		{
			for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
			{
				if (i != 0)
					FUNC2(" & ", fout);
				FUNC2("\\textit{", fout);
				FUNC3(*ptr, fout);
				FUNC1('}', fout);
			}
			FUNC2(" \\\\\n", fout);
			FUNC2("\\hline\n", fout);
		}
	}

	/* print cells */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		FUNC3(*ptr, fout);

		if ((i + 1) % cont->ncolumns == 0)
		{
			FUNC2(" \\\\\n", fout);
			if (opt_border == 3)
				FUNC2("\\hline\n", fout);
			if (cancel_pressed)
				break;
		}
		else
			FUNC2(" & ", fout);
	}

	if (cont->opt->stop_table)
	{
		printTableFooter *footers = FUNC0(cont);

		if (opt_border == 2)
			FUNC2("\\hline\n", fout);

		FUNC2("\\end{tabular}\n\n\\noindent ", fout);

		/* print footers */
		if (footers && !opt_tuples_only && !cancel_pressed)
		{
			printTableFooter *f;

			for (f = footers; f; f = f->next)
			{
				FUNC3(f->data, fout);
				FUNC2(" \\\\\n", fout);
			}
		}

		FUNC1('\n', fout);
	}
}