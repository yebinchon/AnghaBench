#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; struct TYPE_6__* next; } ;
typedef  TYPE_2__ printTableFooter ;
struct TYPE_7__ {char* title; char** cells; unsigned int ncolumns; char const* const* headers; char* aligns; TYPE_2__* footers; TYPE_1__* opt; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_5__ {int tuples_only; unsigned short border; int prior_records; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int /*<<< orphan*/ *) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char const* const,char*) ; 

__attribute__((used)) static void
FUNC4(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	unsigned long record = cont->opt->prior_records + 1;
	unsigned int i;
	const char *const *ptr;

	if (cancel_pressed)
		return;

	if (cont->opt->start_table)
	{
		/* print table in new paragraph - enforce preliminary new line */
		FUNC2("\n", fout);

		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC2(".", fout);
			FUNC2(cont->title, fout);
			FUNC2("\n", fout);
		}

		/* print table [] header definition */
		FUNC2("[cols=\"h,l\"", fout);
		switch (opt_border)
		{
			case 0:
				FUNC2(",frame=\"none\",grid=\"none\"", fout);
				break;
			case 1:
				FUNC2(",frame=\"none\"", fout);
				break;
			case 2:
				FUNC2(",frame=\"all\",grid=\"all\"", fout);
				break;
		}
		FUNC2("]\n", fout);
		FUNC2("|====\n", fout);
	}

	/* print records */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		if (i % cont->ncolumns == 0)
		{
			if (cancel_pressed)
				break;
			if (!opt_tuples_only)
				FUNC1(fout,
						"2+^|Record %lu\n",
						record++);
			else
				FUNC2("2+|\n", fout);
		}

		FUNC2("<l|", fout);
		FUNC0(cont->headers[i % cont->ncolumns], fout);

		FUNC1(fout, " %s|", cont->aligns[i % cont->ncolumns] == 'r' ? ">l" : "<l");
		/* is string only whitespace? */
		if ((*ptr)[FUNC3(*ptr, " \t")] == '\0')
			FUNC2(" ", fout);
		else
			FUNC0(*ptr, fout);
		FUNC2("\n", fout);
	}

	FUNC2("|====\n", fout);

	if (cont->opt->stop_table)
	{
		/* print footers */
		if (!opt_tuples_only && cont->footers != NULL && !cancel_pressed)
		{
			printTableFooter *f;

			FUNC2("\n....\n", fout);
			for (f = cont->footers; f; f = f->next)
			{
				FUNC2(f->data, fout);
				FUNC2("\n", fout);
			}
			FUNC2("....\n", fout);
		}
	}
}