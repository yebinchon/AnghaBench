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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PYTHON3_HOME ; 
 int /*<<< orphan*/  Py3Init_vim ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  globals ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int py3initialised ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(void)
{
    if (!py3initialised)
    {
#ifdef DYNAMIC_PYTHON3
	if (!python3_enabled(TRUE))
	{
	    EMSG(_("E263: Sorry, this command is disabled, the Python library could not be loaded."));
	    goto fail;
	}
#endif

	FUNC14();


#ifdef PYTHON3_HOME
	Py_SetPythonHome(PYTHON3_HOME);
#endif

	FUNC4("vim", Py3Init_vim);

#if !defined(MACOS) || defined(MACOS_X_UNIX)
	FUNC8();
#else
	PyMac_Initialize();
#endif
	/* Initialise threads, and below save the state using
	 * PyEval_SaveThread.  Without the call to PyEval_SaveThread, thread
	 * specific state (such as the system trace hook), will be lost
	 * between invocations of Python code. */
	FUNC1();
#ifdef DYNAMIC_PYTHON3
	get_py3_exceptions();
#endif

	if (FUNC11())
	    goto fail;

	globals = FUNC6(FUNC3("__main__"));

	/* Remove the element from sys.path that was added because of our
	 * argv[0] value in Py3Init_vim().  Previously we used an empty
	 * string, but depending on the OS we then get an empty entry or
	 * the current directory in sys.path.
	 * Only after vim has been imported, the element does exist in
	 * sys.path.
	 */
	FUNC7("import vim; import sys; sys.path = list(filter(lambda x: not x.endswith('must>not&exist'), sys.path))");

	/* lock is created and acquired in PyEval_InitThreads() and thread
	 * state is created in Py_Initialize()
	 * there _PyGILState_NoteThreadState() also sets gilcounter to 1
	 * (python must have threads enabled!)
	 * so the following does both: unlock GIL and save thread state in TLS
	 * without deleting thread state
	 */
	FUNC2();

	py3initialised = 1;
    }

    return 0;

fail:
    /* We call PythonIO_Flush() here to print any Python errors.
     * This is OK, as it is possible to call this function even
     * if PythonIO_Init_io() has not completed successfully (it will
     * not do anything in this case).
     */
    FUNC10();
    return -1;
}