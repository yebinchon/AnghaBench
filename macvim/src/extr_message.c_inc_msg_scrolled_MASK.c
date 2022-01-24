#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 scalar_t__ NUL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VV_SCROLLSTART ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg_scrolled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ sourcing_lnum ; 
 int /*<<< orphan*/ * sourcing_name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,int /*<<< orphan*/ *,long) ; 

__attribute__((used)) static void
FUNC7()
{
#ifdef FEAT_EVAL
    if (*get_vim_var_str(VV_SCROLLSTART) == NUL)
    {
	char_u	    *p = sourcing_name;
	char_u	    *tofree = NULL;
	int	    len;

	/* v:scrollstart is empty, set it to the script/function name and line
	 * number */
	if (p == NULL)
	    p = (char_u *)_("Unknown");
	else
	{
	    len = (int)STRLEN(p) + 40;
	    tofree = alloc(len);
	    if (tofree != NULL)
	    {
		vim_snprintf((char *)tofree, len, _("%s line %ld"),
						      p, (long)sourcing_lnum);
		p = tofree;
	    }
	}
	set_vim_var_string(VV_SCROLLSTART, p, -1);
	vim_free(tofree);
    }
#endif
    ++msg_scrolled;
}