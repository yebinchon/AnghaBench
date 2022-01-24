#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * ht_array; scalar_t__ ht_used; } ;
struct TYPE_11__ {scalar_t__ ga_len; } ;
struct TYPE_12__ {TYPE_5__ sl_sounddone; int /*<<< orphan*/ * sl_sbyts; TYPE_2__ sl_sal; } ;
typedef  TYPE_3__ slang_T ;
struct TYPE_13__ {TYPE_3__* lp_slang; } ;
typedef  TYPE_4__ langp_T ;
typedef  int /*<<< orphan*/  hashitem_T ;
struct TYPE_16__ {int ga_len; } ;
struct TYPE_15__ {TYPE_1__* w_s; } ;
struct TYPE_10__ {TYPE_9__ b_langp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (TYPE_9__,int) ; 
 TYPE_7__* curwin ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6()
{
    langp_T	*lp;
    int		lpi;
    slang_T	*slang;
    int		todo;
    hashitem_T	*hi;

    /* Do this for all languages that support sound folding and for which a
     * .sug file has been loaded. */
    for (lpi = 0; lpi < curwin->w_s->b_langp.ga_len; ++lpi)
    {
	lp = FUNC2(curwin->w_s->b_langp, lpi);
	slang = lp->lp_slang;
	if (slang->sl_sal.ga_len > 0 && slang->sl_sbyts != NULL)
	{
	    /* Free the info about handled words. */
	    todo = (int)slang->sl_sounddone.ht_used;
	    for (hi = slang->sl_sounddone.ht_array; todo > 0; ++hi)
		if (!FUNC0(hi))
		{
		    FUNC5(FUNC1(hi));
		    --todo;
		}

	    /* Clear the hashtable, it may also be used by another region. */
	    FUNC3(&slang->sl_sounddone);
	    FUNC4(&slang->sl_sounddone);
	}
    }
}