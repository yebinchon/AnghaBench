#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* const data; struct TYPE_7__* next; } ;
typedef  TYPE_2__ printTableFooter ;
struct TYPE_8__ {char const* const title; char** cells; char const* const* headers; unsigned int ncolumns; TYPE_1__* opt; TYPE_2__* footers; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_9__ {scalar_t__ separator_zero; } ;
struct TYPE_6__ {int tuples_only; TYPE_5__ recordSep; scalar_t__ stop_table; TYPE_5__ fieldSep; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned int i;
	const char *const *ptr;
	bool		need_recordsep = false;

	if (cancel_pressed)
		return;

	if (cont->opt->start_table)
	{
		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC1(cont->title, fout);
			need_recordsep = true;
		}
	}
	else
		/* assume continuing printout */
		need_recordsep = true;

	/* print records */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		if (need_recordsep)
		{
			/* record separator is 2 occurrences of recordsep in this mode */
			FUNC2(cont->opt->recordSep, fout);
			FUNC2(cont->opt->recordSep, fout);
			need_recordsep = false;
			if (cancel_pressed)
				break;
		}

		FUNC1(cont->headers[i % cont->ncolumns], fout);
		FUNC2(cont->opt->fieldSep, fout);
		FUNC1(*ptr, fout);

		if ((i + 1) % cont->ncolumns)
			FUNC2(cont->opt->recordSep, fout);
		else
			need_recordsep = true;
	}

	if (cont->opt->stop_table)
	{
		/* print footers */
		if (!opt_tuples_only && cont->footers != NULL && !cancel_pressed)
		{
			printTableFooter *f;

			FUNC2(cont->opt->recordSep, fout);
			for (f = cont->footers; f; f = f->next)
			{
				FUNC2(cont->opt->recordSep, fout);
				FUNC1(f->data, fout);
			}
		}

		/* see above in print_unaligned_text() */
		if (need_recordsep)
		{
			if (cont->opt->recordSep.separator_zero)
				FUNC2(cont->opt->recordSep, fout);
			else
				FUNC0('\n', fout);
		}
	}
}