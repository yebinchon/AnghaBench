#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ w_p_pvw; TYPE_1__* w_buffer; struct TYPE_9__* w_next; } ;
typedef  TYPE_2__ win_T ;
struct TYPE_11__ {int /*<<< orphan*/  b_help; } ;
struct TYPE_10__ {int /*<<< orphan*/ * tp_next; } ;
struct TYPE_8__ {scalar_t__ b_help; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_2__* aucmd_win ; 
 TYPE_6__* curbuf ; 
 TYPE_2__* curwin ; 
 TYPE_4__* first_tabpage ; 
 TYPE_2__* firstwin ; 

int
FUNC0()
{
#ifdef FEAT_WINDOWS
    int		count = 0;
    win_T	*wp;

    /* If there is another tab page there always is another window. */
    if (first_tabpage->tp_next != NULL)
	return FALSE;

    for (wp = firstwin; wp != NULL; wp = wp->w_next)
	if (wp->w_buffer != NULL
		&& (!((wp->w_buffer->b_help && !curbuf->b_help)
# ifdef FEAT_QUICKFIX
		    || wp->w_p_pvw
# endif
	     ) || wp == curwin)
# ifdef FEAT_AUTOCMD
		&& wp != aucmd_win
# endif
	   )
	    ++count;
    return (count <= 1);
#else
    return TRUE;
#endif
}