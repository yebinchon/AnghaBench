#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ linenr_T ;
struct TYPE_8__ {scalar_t__ bh_data; } ;
typedef  TYPE_2__ bhdr_T ;
struct TYPE_7__ {scalar_t__ ml_line_count; scalar_t__ ml_locked_low; scalar_t__ ml_locked_high; int /*<<< orphan*/  ml_flags; int /*<<< orphan*/ * ml_mfp; } ;
struct TYPE_10__ {TYPE_1__ b_ml; } ;
struct TYPE_9__ {int* db_index; } ;
typedef  TYPE_3__ DATA_BL ;

/* Variables and functions */
 int DB_INDEX_MASK ; 
 int DB_MARKED ; 
 int /*<<< orphan*/  ML_FIND ; 
 int /*<<< orphan*/  ML_LOCKED_DIRTY ; 
 TYPE_5__* curbuf ; 
 scalar_t__ lowest_marked ; 
 TYPE_2__* FUNC0 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC1()
{
    bhdr_T	*hp;
    DATA_BL	*dp;
    linenr_T	lnum;
    int		i;

    if (curbuf->b_ml.ml_mfp == NULL)	    /* nothing to do */
	return;

    /*
     * The search starts with line lowest_marked.
     */
    for (lnum = lowest_marked; lnum <= curbuf->b_ml.ml_line_count; )
    {
	/*
	 * Find the data block containing the line.
	 * This also fills the stack with the blocks from the root to the data
	 * block and releases any locked block.
	 */
	if ((hp = FUNC0(curbuf, lnum, ML_FIND)) == NULL)
	    return;		/* give error message? */

	dp = (DATA_BL *)(hp->bh_data);

	for (i = lnum - curbuf->b_ml.ml_locked_low;
			    lnum <= curbuf->b_ml.ml_locked_high; ++i, ++lnum)
	    if ((dp->db_index[i]) & DB_MARKED)
	    {
		(dp->db_index[i]) &= DB_INDEX_MASK;
		curbuf->b_ml.ml_flags |= ML_LOCKED_DIRTY;
	    }
    }

    lowest_marked = 0;
    return;
}