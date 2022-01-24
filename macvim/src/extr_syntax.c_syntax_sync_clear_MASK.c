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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ sp_syncing; } ;
struct TYPE_9__ {TYPE_2__* w_s; } ;
struct TYPE_7__ {int ga_len; } ;
struct TYPE_8__ {int /*<<< orphan*/ * b_syn_linecont_pat; int /*<<< orphan*/ * b_syn_linecont_prog; scalar_t__ b_syn_sync_linebreaks; scalar_t__ b_syn_sync_maxlines; scalar_t__ b_syn_sync_minlines; scalar_t__ b_syn_sync_flags; TYPE_1__ b_syn_patterns; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_2__*) ; 
 TYPE_4__* curwin ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5()
{
    int i;

    /* free the syntax patterns */
    for (i = curwin->w_s->b_syn_patterns.ga_len; --i >= 0; )
	if (FUNC0(curwin->w_s)[i].sp_syncing)
	    FUNC1(curwin->w_s, i);

    curwin->w_s->b_syn_sync_flags = 0;
    curwin->w_s->b_syn_sync_minlines = 0;
    curwin->w_s->b_syn_sync_maxlines = 0;
    curwin->w_s->b_syn_sync_linebreaks = 0;

    FUNC4(curwin->w_s->b_syn_linecont_prog);
    curwin->w_s->b_syn_linecont_prog = NULL;
    FUNC3(curwin->w_s->b_syn_linecont_pat);
    curwin->w_s->b_syn_linecont_pat = NULL;

    FUNC2(curwin->w_s);		/* Need to recompute all syntax. */
}