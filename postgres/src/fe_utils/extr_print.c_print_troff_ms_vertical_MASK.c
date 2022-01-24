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
struct TYPE_6__ {char const* const data; struct TYPE_6__* next; } ;
typedef  TYPE_2__ printTableFooter ;
struct TYPE_7__ {char const* const title; char** cells; unsigned int ncolumns; char const* const* headers; TYPE_2__* footers; TYPE_1__* opt; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_5__ {int tuples_only; unsigned short border; int prior_records; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	unsigned long record = cont->opt->prior_records + 1;
	unsigned int i;
	const char *const *ptr;
	unsigned short current_format = 0;	/* 0=none, 1=header, 2=body */

	if (cancel_pressed)
		return;

	if (opt_border > 2)
		opt_border = 2;

	if (cont->opt->start_table)
	{
		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC2(".LP\n.DS C\n", fout);
			FUNC3(cont->title, fout);
			FUNC2("\n.DE\n", fout);
		}

		/* begin environment and set alignments and borders */
		FUNC2(".LP\n.TS\n", fout);
		if (opt_border == 2)
			FUNC2("center box;\n", fout);
		else
			FUNC2("center;\n", fout);

		/* basic format */
		if (opt_tuples_only)
			FUNC2("c l;\n", fout);
	}
	else
		current_format = 2;		/* assume tuples printed already */

	/* print records */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		/* new record */
		if (i % cont->ncolumns == 0)
		{
			if (cancel_pressed)
				break;
			if (!opt_tuples_only)
			{
				if (current_format != 1)
				{
					if (opt_border == 2 && record > 1)
						FUNC2("_\n", fout);
					if (current_format != 0)
						FUNC2(".T&\n", fout);
					FUNC2("c s.\n", fout);
					current_format = 1;
				}
				FUNC0(fout, "\\fIRecord %lu\\fP\n", record++);
			}
			if (opt_border >= 1)
				FUNC2("_\n", fout);
		}

		if (!opt_tuples_only)
		{
			if (current_format != 2)
			{
				if (current_format != 0)
					FUNC2(".T&\n", fout);
				if (opt_border != 1)
					FUNC2("c l.\n", fout);
				else
					FUNC2("c | l.\n", fout);
				current_format = 2;
			}
		}

		FUNC3(cont->headers[i % cont->ncolumns], fout);
		FUNC1('\t', fout);
		FUNC3(*ptr, fout);

		FUNC1('\n', fout);
	}

	if (cont->opt->stop_table)
	{
		FUNC2(".TE\n.DS L\n", fout);

		/* print footers */
		if (cont->footers && !opt_tuples_only && !cancel_pressed)
		{
			printTableFooter *f;

			for (f = cont->footers; f; f = f->next)
			{
				FUNC3(f->data, fout);
				FUNC1('\n', fout);
			}
		}

		FUNC2(".DE\n", fout);
	}
}