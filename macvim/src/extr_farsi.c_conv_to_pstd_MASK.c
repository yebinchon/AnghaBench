#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  linenr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_3__ {int ml_line_count; } ;
struct TYPE_4__ {TYPE_1__ b_ml; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR ; 
 int /*<<< orphan*/  HLF_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* curbuf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  farsi_text_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7()
{
    char_u	*ptr;
    int		lnum, llen, i;

    /*
     * Following line contains Farsi encoded character.
     */

    FUNC2((char_u *)"%s/\232/\202\231/g");

    for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
    {
	ptr = FUNC4((linenr_T)lnum);

	llen = (int)FUNC1(ptr);

	for ( i = 0; i < llen; i++)
	{
	    ptr[i] = FUNC6(ptr[i]);

	}
    }

    /* Assume the screen has been messed up: clear it and redraw. */
    FUNC5(CLEAR);
    FUNC0(farsi_text_2, FUNC3(HLF_S));
}