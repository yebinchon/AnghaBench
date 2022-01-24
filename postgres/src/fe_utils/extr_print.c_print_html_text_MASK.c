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
struct TYPE_9__ {char const* const title; char** headers; char** cells; unsigned int ncolumns; char* aligns; TYPE_1__* opt; } ;
typedef  TYPE_3__ printTableContent ;
struct TYPE_7__ {int tuples_only; unsigned short border; char* tableAttr; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cancel_pressed ; 
 TYPE_2__* FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const* const,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char const* const,char*) ; 

__attribute__((used)) static void
FUNC6(const printTableContent *cont, FILE *fout)
{
	bool		opt_tuples_only = cont->opt->tuples_only;
	unsigned short opt_border = cont->opt->border;
	const char *opt_table_attr = cont->opt->tableAttr;
	unsigned int i;
	const char *const *ptr;

	if (cancel_pressed)
		return;

	if (cont->opt->start_table)
	{
		FUNC1(fout, "<table border=\"%d\"", opt_border);
		if (opt_table_attr)
			FUNC1(fout, " %s", opt_table_attr);
		FUNC3(">\n", fout);

		/* print title */
		if (!opt_tuples_only && cont->title)
		{
			FUNC3("  <caption>", fout);
			FUNC4(cont->title, fout);
			FUNC3("</caption>\n", fout);
		}

		/* print headers */
		if (!opt_tuples_only)
		{
			FUNC3("  <tr>\n", fout);
			for (ptr = cont->headers; *ptr; ptr++)
			{
				FUNC3("    <th align=\"center\">", fout);
				FUNC4(*ptr, fout);
				FUNC3("</th>\n", fout);
			}
			FUNC3("  </tr>\n", fout);
		}
	}

	/* print cells */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		if (i % cont->ncolumns == 0)
		{
			if (cancel_pressed)
				break;
			FUNC3("  <tr valign=\"top\">\n", fout);
		}

		FUNC1(fout, "    <td align=\"%s\">", cont->aligns[(i) % cont->ncolumns] == 'r' ? "right" : "left");
		/* is string only whitespace? */
		if ((*ptr)[FUNC5(*ptr, " \t")] == '\0')
			FUNC3("&nbsp; ", fout);
		else
			FUNC4(*ptr, fout);

		FUNC3("</td>\n", fout);

		if ((i + 1) % cont->ncolumns == 0)
			FUNC3("  </tr>\n", fout);
	}

	if (cont->opt->stop_table)
	{
		printTableFooter *footers = FUNC0(cont);

		FUNC3("</table>\n", fout);

		/* print footers */
		if (!opt_tuples_only && footers != NULL && !cancel_pressed)
		{
			printTableFooter *f;

			FUNC3("<p>", fout);
			for (f = footers; f; f = f->next)
			{
				FUNC4(f->data, fout);
				FUNC3("<br />\n", fout);
			}
			FUNC3("</p>", fout);
		}

		FUNC2('\n', fout);
	}
}