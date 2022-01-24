#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  code; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int Columns ; 
 int /*<<< orphan*/  FALSE ; 
 int GAP ; 
 int INC2 ; 
 int INC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ got_int ; 
 int msg_col ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tc_len ; 
 TYPE_1__* termcodes ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

void
FUNC8()
{
    int		col;
    int		*items;
    int		item_count;
    int		run;
    int		row, rows;
    int		cols;
    int		i;
    int		len;

#define INC3 27	    /* try to make three columns */
#define INC2 40	    /* try to make two columns */
#define GAP 2	    /* spaces between columns */

    if (tc_len == 0)	    /* no terminal codes (must be GUI) */
	return;
    items = (int *)FUNC2((unsigned)(sizeof(int) * tc_len));
    if (items == NULL)
	return;

    /* Highlight title */
    FUNC0(FUNC1("\n--- Terminal keys ---"));

    /*
     * do the loop two times:
     * 1. display the short items (non-strings and short strings)
     * 2. display the medium items (medium length strings)
     * 3. display the long items (remaining strings)
     */
    for (run = 1; run <= 3 && !got_int; ++run)
    {
	/*
	 * collect the items in items[]
	 */
	item_count = 0;
	for (i = 0; i < tc_len; i++)
	{
	    len = FUNC5(termcodes[i].name,
						    termcodes[i].code, FALSE);
	    if (len <= INC3 - GAP ? run == 1
			: len <= INC2 - GAP ? run == 2
			: run == 3)
		items[item_count++] = i;
	}

	/*
	 * display the items
	 */
	if (run <= 2)
	{
	    cols = (Columns + GAP) / (run == 1 ? INC3 : INC2);
	    if (cols == 0)
		cols = 1;
	    rows = (item_count + cols - 1) / cols;
	}
	else	/* run == 3 */
	    rows = item_count;
	for (row = 0; row < rows && !got_int; ++row)
	{
	    FUNC3('\n');			/* go to next line */
	    if (got_int)			/* 'q' typed in more */
		break;
	    col = 0;
	    for (i = row; i < item_count; i += rows)
	    {
		msg_col = col;			/* make columns */
		FUNC5(termcodes[items[i]].name,
					      termcodes[items[i]].code, TRUE);
		if (run == 2)
		    col += INC2;
		else
		    col += INC3;
	    }
	    FUNC4();
	    FUNC6();
	}
    }
    FUNC7(items);
}