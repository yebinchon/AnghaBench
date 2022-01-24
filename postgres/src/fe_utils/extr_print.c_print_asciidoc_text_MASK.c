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
struct TYPE_8__ {char* data; struct TYPE_8__* next; } ;
typedef  TYPE_2__ printTableFooter ;
struct TYPE_9__ {char* title; unsigned int ncolumns; char* aligns; char** headers; char** cells; TYPE_1__* opt; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_7__ {int tuples_only; unsigned short border; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int /*<<< orphan*/ *) ; 
 scalar_t__ cancel_pressed ; 
 TYPE_2__* FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char const* const,char*) ; 

__attribute__((used)) static void
FUNC5(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	unsigned int i;
	const char *const *ptr;

	if (cancel_pressed)
		return;

	if (cont->opt->start_table)
	{
		/* print table in new paragraph - enforce preliminary new line */
		FUNC3("\n", fout);

		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC3(".", fout);
			FUNC3(cont->title, fout);
			FUNC3("\n", fout);
		}

		/* print table [] header definition */
		FUNC2(fout, "[%scols=\"", !opt_tuples_only ? "options=\"header\"," : "");
		for (i = 0; i < cont->ncolumns; i++)
		{
			if (i != 0)
				FUNC3(",", fout);
			FUNC2(fout, "%s", cont->aligns[(i) % cont->ncolumns] == 'r' ? ">l" : "<l");
		}
		FUNC3("\"", fout);
		switch (opt_border)
		{
			case 0:
				FUNC3(",frame=\"none\",grid=\"none\"", fout);
				break;
			case 1:
				FUNC3(",frame=\"none\"", fout);
				break;
			case 2:
				FUNC3(",frame=\"all\",grid=\"all\"", fout);
				break;
		}
		FUNC3("]\n", fout);
		FUNC3("|====\n", fout);

		/* print headers */
		if (!opt_tuples_only)
		{
			for (ptr = cont->headers; *ptr; ptr++)
			{
				if (ptr != cont->headers)
					FUNC3(" ", fout);
				FUNC3("^l|", fout);
				FUNC0(*ptr, fout);
			}
			FUNC3("\n", fout);
		}
	}

	/* print cells */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		if (i % cont->ncolumns == 0)
		{
			if (cancel_pressed)
				break;
		}

		if (i % cont->ncolumns != 0)
			FUNC3(" ", fout);
		FUNC3("|", fout);

		/* protect against needless spaces */
		if ((*ptr)[FUNC4(*ptr, " \t")] == '\0')
		{
			if ((i + 1) % cont->ncolumns != 0)
				FUNC3(" ", fout);
		}
		else
			FUNC0(*ptr, fout);

		if ((i + 1) % cont->ncolumns == 0)
			FUNC3("\n", fout);
	}

	FUNC3("|====\n", fout);

	if (cont->opt->stop_table)
	{
		printTableFooter *footers = FUNC1(cont);

		/* print footers */
		if (!opt_tuples_only && footers != NULL && !cancel_pressed)
		{
			printTableFooter *f;

			FUNC3("\n....\n", fout);
			for (f = footers; f; f = f->next)
			{
				FUNC3(f->data, fout);
				FUNC3("\n", fout);
			}
			FUNC3("....\n", fout);
		}
	}
}