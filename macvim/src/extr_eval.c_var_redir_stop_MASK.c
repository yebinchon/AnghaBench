#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* v_string; } ;
struct TYPE_14__ {TYPE_1__ vval; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_2__ typval_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_16__ {TYPE_3__* ga_data; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ll_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FNE_CHECK_START ; 
 int /*<<< orphan*/  NUL ; 
 int /*<<< orphan*/  VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * redir_endp ; 
 TYPE_8__ redir_ga ; 
 TYPE_3__* redir_lval ; 
 TYPE_3__* redir_varname ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void
FUNC5()
{
    typval_T	tv;

    if (redir_lval != NULL)
    {
	/* If there was no error: assign the text to the variable. */
	if (redir_endp != NULL)
	{
	    FUNC1(&redir_ga, NUL);  /* Append the trailing NUL. */
	    tv.v_type = VAR_STRING;
	    tv.vval.v_string = redir_ga.ga_data;
	    /* Call get_lval() again, if it's inside a Dict or List it may
	     * have changed. */
	    redir_endp = FUNC2(redir_varname, NULL, redir_lval,
					FALSE, FALSE, 0, FNE_CHECK_START);
	    if (redir_endp != NULL && redir_lval->ll_name != NULL)
		FUNC3(redir_lval, redir_endp, &tv, FALSE, (char_u *)".");
	    FUNC0(redir_lval);
	}

	/* free the collected output */
	FUNC4(redir_ga.ga_data);
	redir_ga.ga_data = NULL;

	FUNC4(redir_lval);
	redir_lval = NULL;
    }
    FUNC4(redir_varname);
    redir_varname = NULL;
}