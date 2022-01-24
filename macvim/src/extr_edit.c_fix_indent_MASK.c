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
struct TYPE_2__ {scalar_t__ b_p_ai; scalar_t__ b_p_lisp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_1__* curbuf ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_lisp_indent ; 
 scalar_t__ p_paste ; 

void
FUNC3()
{
    if (p_paste)
	return;
# ifdef FEAT_LISP
    if (curbuf->b_p_lisp && curbuf->b_p_ai)
	fixthisline(get_lisp_indent);
# endif
# if defined(FEAT_LISP) && defined(FEAT_CINDENT)
    else
# endif
# ifdef FEAT_CINDENT
	if (cindent_on())
	    do_c_expr_indent();
# endif
}