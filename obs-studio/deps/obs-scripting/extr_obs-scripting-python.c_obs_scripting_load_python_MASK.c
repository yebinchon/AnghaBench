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
typedef  char wchar_t ;
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  argv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPT_DIR ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC18 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  home_path ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  py_obspython ; 
 int python_loaded ; 
 int python_loaded_at_all ; 
 int /*<<< orphan*/  python_tick ; 
 scalar_t__* pythondir ; 
 char* startup_script ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

bool FUNC26(const char *python_path)
{
	if (python_loaded)
		return true;

		/* Use external python on windows and mac */
#if RUNTIME_LINK
#if 0
	struct dstr old_path  = {0};
	struct dstr new_path  = {0};
#endif

	if (!import_python(python_path))
		return false;

	if (python_path && *python_path) {
		os_utf8_to_wcs(python_path, 0, home_path, 1024);
		Py_SetPythonHome(home_path);
#if 0
		dstr_copy(&old_path, getenv("PATH"));
		_putenv("PYTHONPATH=");
		_putenv("PATH=");
#endif
	}
#else
	FUNC10(python_path);
#endif

	FUNC7();
	if (!FUNC8())
		return false;

#if 0
#ifdef _DEBUG
	if (pythondir && *pythondir) {
		dstr_printf(&new_path, "PATH=%s", old_path.array);
		_putenv(new_path.array);
	}
#endif

	bfree(pythondir);
	dstr_free(&new_path);
	dstr_free(&old_path);
#endif

	FUNC0();
	if (!FUNC2())
		return false;

	/* ---------------------------------------------- */
	/* Must set arguments for guis to work            */

	wchar_t *argv[] = {L"", NULL};
	int argc = sizeof(argv) / sizeof(wchar_t *) - 1;

	FUNC6(argc, argv);

#ifdef DEBUG_PYTHON_STARTUP
	/* ---------------------------------------------- */
	/* Debug logging to file if startup is failing    */

	PyRun_SimpleString("import os");
	PyRun_SimpleString("import sys");
	PyRun_SimpleString("os.environ['PYTHONUNBUFFERED'] = '1'");
	PyRun_SimpleString("sys.stdout = open('./stdOut.txt','w',1)");
	PyRun_SimpleString("sys.stderr = open('./stdErr.txt','w',1)");
	PyRun_SimpleString("print(sys.version)");
#endif

	/* ---------------------------------------------- */
	/* Load main interface module                     */

	FUNC14(SCRIPT_DIR);

	py_obspython = FUNC4("obspython");
	bool success = !FUNC24();
	if (!success) {
		FUNC25("Error importing obspython.py', unloading obs-python");
		goto out;
	}

	python_loaded = FUNC5(startup_script) == 0;
	FUNC24();

	FUNC12(py_obspython);
	FUNC24();

	FUNC13(py_obspython);
	FUNC24();

out:
	/* ---------------------------------------------- */
	/* Free data                                      */

	FUNC1(FUNC3());

	if (!success) {
		FUNC25("Failed to load python plugin");
		FUNC22();
	}

	python_loaded_at_all = success;

	if (python_loaded)
		FUNC21(python_tick, NULL);

	return python_loaded;
}