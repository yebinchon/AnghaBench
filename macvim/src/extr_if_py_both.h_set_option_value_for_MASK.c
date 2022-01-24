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
typedef  int /*<<< orphan*/  win_T ;
typedef  int /*<<< orphan*/  tabpage_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  buf_T ;

/* Variables and functions */
 int FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SREQ_BUF 130 
#define  SREQ_GLOBAL 129 
#define  SREQ_WIN 128 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(
	char_u *key,
	int numval,
	char_u *stringval,
	int opt_flags,
	int opt_type,
	void *from)
{
    win_T	*save_curwin = NULL;
    tabpage_T	*save_curtab = NULL;
    buf_T	*save_curbuf = NULL;
    int		set_ret = 0;

    FUNC3();
    switch (opt_type)
    {
	case SREQ_WIN:
	    if (FUNC8(&save_curwin, &save_curtab, (win_T *)from,
			      FUNC9((win_T *)from), FALSE) == FAIL)
	    {
		if (FUNC2())
		    return -1;
		FUNC1(FUNC0("problem while switching windows"));
		return -1;
	    }
	    set_ret = FUNC6(key, numval, stringval, opt_flags);
	    FUNC5(save_curwin, save_curtab, TRUE);
	    break;
	case SREQ_BUF:
	    FUNC7(&save_curbuf, (buf_T *)from);
	    set_ret = FUNC6(key, numval, stringval, opt_flags);
	    FUNC4(save_curbuf);
	    break;
	case SREQ_GLOBAL:
	    set_ret = FUNC6(key, numval, stringval, opt_flags);
	    break;
    }
    if (set_ret == FAIL)
	return -1;
    return FUNC2();
}