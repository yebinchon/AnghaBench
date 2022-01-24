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
struct TYPE_5__ {char** cells; char const* const* headers; int ncolumns; TYPE_1__* opt; } ;
typedef  TYPE_2__ printTableContent ;
struct TYPE_4__ {char* csvFieldSep; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC0 (char const* const,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(const printTableContent *cont, FILE *fout)
{
	const char *const *ptr;
	int			i;

	/* print records */
	for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
	{
		if (cancel_pressed)
			return;

		/* print name of column */
		FUNC0(cont->headers[i % cont->ncolumns], fout,
						cont->opt->csvFieldSep[0]);

		/* print field separator */
		FUNC1(cont->opt->csvFieldSep[0], fout);

		/* print field value */
		FUNC0(*ptr, fout, cont->opt->csvFieldSep[0]);

		FUNC1('\n', fout);
	}
}