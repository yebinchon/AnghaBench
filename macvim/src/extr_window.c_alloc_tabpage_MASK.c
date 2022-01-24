#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* tp_prev_which_scrollbars; int /*<<< orphan*/  tp_ch_used; int /*<<< orphan*/  tp_diff_invalid; int /*<<< orphan*/  tp_winvar; int /*<<< orphan*/ * tp_vars; } ;
typedef  TYPE_1__ tabpage_T ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VAR_SCOPE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_ch ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static tabpage_T *
FUNC4()
{
    tabpage_T	*tp;
# ifdef FEAT_GUI
    int		i;
# endif


    tp = (tabpage_T *)FUNC0((unsigned)sizeof(tabpage_T));
    if (tp == NULL)
	return NULL;

# ifdef FEAT_EVAL
    /* init t: variables */
    tp->tp_vars = dict_alloc();
    if (tp->tp_vars == NULL)
    {
	vim_free(tp);
	return NULL;
    }
    init_var_dict(tp->tp_vars, &tp->tp_winvar, VAR_SCOPE);
# endif

# ifdef FEAT_GUI
    for (i = 0; i < 3; i++)
	tp->tp_prev_which_scrollbars[i] = -1;
# endif
# ifdef FEAT_DIFF
    tp->tp_diff_invalid = TRUE;
# endif
    tp->tp_ch_used = p_ch;

    return tp;
}