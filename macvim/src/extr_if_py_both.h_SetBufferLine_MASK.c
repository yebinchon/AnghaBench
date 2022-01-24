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
typedef  scalar_t__ linenr_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  buf_T ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int PyInt ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  RAISE_DELETE_LINE_FAIL ; 
 int /*<<< orphan*/  RAISE_REPLACE_LINE_FAIL ; 
 int /*<<< orphan*/  RAISE_UNDO_FAIL ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * curbuf ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,long) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (scalar_t__,long) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(buf_T *buf, PyInt n, PyObject *line, PyInt *len_change)
{
    buf_T	*save_curbuf = NULL;
    win_T	*save_curwin = NULL;
    tabpage_T	*save_curtab = NULL;

    /* First of all, we check the type of the supplied Python object.
     * There are three cases:
     *	  1. NULL, or None - this is a deletion.
     *	  2. A string	   - this is a replacement.
     *	  3. Anything else - this is an error.
     */
    if (line == Py_None || line == NULL)
    {
	FUNC2();
	FUNC14(buf, &save_curwin, &save_curtab, &save_curbuf);

	FUNC6();

	if (FUNC15((linenr_T)n, 1L) == FAIL)
	    RAISE_UNDO_FAIL;
	else if (FUNC10((linenr_T)n, FALSE) == FAIL)
	    RAISE_DELETE_LINE_FAIL;
	else
	{
	    if (buf == curbuf)
		FUNC12((linenr_T)n, (linenr_T)n + 1, (linenr_T)-1);
	    if (save_curbuf == NULL)
		/* Only adjust marks if we managed to switch to a window that
		 * holds the buffer, otherwise line numbers will be invalid. */
		FUNC9((linenr_T)n, 1L);
	}

	FUNC13(save_curwin, save_curtab, save_curbuf);

	if (FUNC5())
	    return FAIL;

	if (len_change)
	    *len_change = -1;

	return OK;
    }
    else if (FUNC0(line) || FUNC3(line))
    {
	char	*save = FUNC4(line);

	if (save == NULL)
	    return FAIL;

	FUNC6();

	/* We do not need to free "save" if ml_replace() consumes it. */
	FUNC2();
	FUNC14(buf, &save_curwin, &save_curtab, &save_curbuf);

	if (FUNC16((linenr_T)n) == FAIL)
	{
	    RAISE_UNDO_FAIL;
	    FUNC17(save);
	}
	else if (FUNC11((linenr_T)n, (char_u *)save, FALSE) == FAIL)
	{
	    RAISE_REPLACE_LINE_FAIL;
	    FUNC17(save);
	}
	else
	    FUNC7((linenr_T)n, 0);

	FUNC13(save_curwin, save_curtab, save_curbuf);

	/* Check that the cursor is not beyond the end of the line now. */
	if (buf == curbuf)
	    FUNC8();

	if (FUNC5())
	    return FAIL;

	if (len_change)
	    *len_change = 0;

	return OK;
    }
    else
    {
	FUNC1();
	return FAIL;
    }
}